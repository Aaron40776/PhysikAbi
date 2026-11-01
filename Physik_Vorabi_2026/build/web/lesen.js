/* Textansicht eines Dokuments: Inhaltsverzeichnis, Suche im Dokument, markierte Treffer. */
(function () {
  "use strict";

  var artikel = document.getElementById("artikel");
  var titelFeld = document.getElementById("doktitel");
  var metaFeld = document.getElementById("dokmeta");
  var pdfKnopf = document.getElementById("pdfknopf");
  var sucheKnopf = document.getElementById("sucheknopf");
  var docWahl = document.getElementById("docwahl");
  var tocListe = document.getElementById("toc");
  var eingabe = document.getElementById("imdok");
  var navi = document.getElementById("treffernavi");
  var zaehler = document.getElementById("zaehler");
  var gelesenKnopf = document.getElementById("gelesenknopf");

  var GELESEN = "physik.gelesen";
  var LETZTES = "physik.letztes";

  var LABEL = /^(Merksatz|Definition|Achtung(?: – typische Fehlerquelle)?|Experiment|Herleitung|Prüfungsrelevanz|Beobachtung|Aufgabe \d+|Tipp|Hinweis)$/;
  var leiste = document.querySelector(".leiste");

  function kopfVersatz() {
    return (leiste ? leiste.getBoundingClientRect().height : 60) + 10;
  }

  /* scrollIntoView + scrollBy konkurrieren mit scroll-behavior:smooth und landen bei 0. */
  function springeZu(el) {
    var y = el.getBoundingClientRect().top + window.scrollY - kopfVersatz();
    window.scrollTo({ top: Math.max(0, y), behavior: "instant" });
  }

  var params = new URLSearchParams(window.location.search);
  var docId = params.get("doc") || "";
  var startSeite = Math.max(1, parseInt(params.get("seite") || "1", 10) || 1);
  var q = params.get("q") || "";
  var wunschTitel = params.get("h") || "";
  var doc = null, seiten = [], tokens = [], marken = [], stelle = -1, aktuelleSeite = startSeite;

  function lies(schluessel, vorgabe) {
    try {
      var wert = JSON.parse(localStorage.getItem(schluessel));
      return wert === null || wert === undefined ? vorgabe : wert;
    } catch (e) { return vorgabe; }
  }
  function schreib(schluessel, wert) {
    try { localStorage.setItem(schluessel, JSON.stringify(wert)); } catch (e) {}
  }

  function klasse(text, ersteZeile) {
    if (LABEL.test(ersteZeile)) return "marke";
    for (var i = 0; i < doc.toc.length; i++) {
      if (doc.toc[i][1] === ersteZeile) return doc.toc[i][0] === 1 ? "ueberschrift" : "unterueberschrift";
    }
    if (/^Abbildung\s*\d+/.test(ersteZeile)) return "bild";
    return "";
  }

  function baueArtikel() {
    var html = "";
    var anker = {};
    doc.toc.forEach(function (e) { anker[e[1]] = null; });

    if (doc.leer && doc.leer.length) {
      html += '<p class="lese-hinweis">Deckblatt und gedrucktes Inhaltsverzeichnis (S. ' +
        doc.leer.join(", ") + ") sind hier ausgeblendet; im PDF sind sie enthalten.</p>";
    }
    for (var p = 0; p < doc.n; p++) {
      if (doc.leer && doc.leer.indexOf(p + 1) !== -1) continue;
      var bloecke = seiten[p] || [];
      html += '<section class="lese-seite" id="seite-' + (p + 1) + '">' +
        '<div class="seiten-marke"><span>Seite ' + (p + 1) + "</span>" +
        '<a href="' + PhysikSuche.escape(doc.f + "#page=" + (p + 1) +
        (q ? "&search=" + encodeURIComponent(q) : "")) +
        '" target="_blank" rel="noopener">PDF \u2197</a></div>';
      if (!bloecke.length) {
        html += '<p class="lese-block kein-text">(keine Textschicht auf dieser Seite)</p>';
      }
      bloecke.forEach(function (text, i) {
        var zeilen = text.split("\n");
        var erste = (zeilen[0] || "").trim();
        var k = klasse(text, erste);
        var id = k === "ueberschrift" || k === "unterueberschrift" ? ' id="h-' + (p + 1) + "-" + i + '"' : "";
        if (k === "ueberschrift" || k === "unterueberschrift") {
          if (anker[erste] === undefined || anker[erste] === null) anker[erste] = "h-" + (p + 1) + "-" + i;
        }
        if (k === "marke") {
          html += '<p class="lese-block marke">' + PhysikSuche.markiere(erste, tokens) + "</p>";
          var rest = zeilen.slice(1).join("\n").trim();
          if (rest) html += '<p class="lese-block">' + PhysikSuche.markiere(rest, tokens) + "</p>";
        } else {
          var tag = k === "ueberschrift" ? "h2" : k === "unterueberschrift" ? "h3" : "p";
          html += "<" + tag + ' class="lese-block ' + k + '"' + id + ">" +
            PhysikSuche.markiere(text, tokens) + "</" + tag + ">";
        }
      });
      html += "</section>";
    }
    artikel.innerHTML = html;
    return anker;
  }

  function baueToc(anker) {
    var html = "";
    doc.toc.forEach(function (e) {
      var ziel = anker[e[1]] ? "#" + anker[e[1]] : "lesen.html?doc=" + encodeURIComponent(doc.id) + "&seite=" + e[2];
      html += '<li class="stufe' + e[0] + '" data-seite="' + e[2] + '"><a href="' + ziel + '">' +
        PhysikSuche.escape(e[1]) + "</a></li>";
    });
    tocListe.innerHTML = html;
    tocListe.querySelectorAll("a").forEach(function (a) {
      a.addEventListener("click", function (ev) {
        var ziel = a.getAttribute("href");
        if (ziel.charAt(0) === "#") {
          ev.preventDefault();
          var el = document.getElementById(ziel.slice(1));
          if (el) {
            springeZu(el);
            history.replaceState(null, "", "#" + ziel.slice(1));
          }
        }
      });
    });
  }

  function sammleMarken() {
    marken = Array.prototype.slice.call(artikel.querySelectorAll("mark"));
    marken.forEach(function (m) { m.classList.remove("aktuell"); });
    stelle = -1;
    navi.hidden = !q && !marken.length;
    if (marken.length) zeige(0, false);
    else if (zaehler) zaehler.textContent = q ? "0 Treffer" : "";
  }

  function zeige(i, scrollen) {
    if (!marken.length) return;
    if (stelle >= 0 && marken[stelle]) marken[stelle].classList.remove("aktuell");
    stelle = (i + marken.length) % marken.length;
    var m = marken[stelle];
    m.classList.add("aktuell");
    zaehler.textContent = (stelle + 1) + " / " + marken.length;
    if (scrollen !== false) {
      m.scrollIntoView({ behavior: "auto", block: "center" });
      var wahl = m.closest(".lese-seite");
      if (wahl) aktuelleSeite = parseInt(wahl.id.replace("seite-", ""), 10) || aktuelleSeite;
    }
  }

  function markeAufSeite(seite) {
    for (var i = 0; i < marken.length; i++) {
      var abschnitt = marken[i].closest(".lese-seite");
      var nr = abschnitt ? parseInt(abschnitt.id.replace("seite-", ""), 10) : 0;
      if (nr >= seite) return i;
    }
    return 0;
  }

  function zeichne(springen) {
    tokens = q.trim() ? PhysikSuche.zerlege(q) : [];
    var anker = baueArtikel();
    baueToc(anker);
    sammleMarken();
    if (q && marken.length) zeige(springen ? markeAufSeite(startSeite) : 0, springen !== false);
    aktualisiereNavi();
  }

  function aktualisiereNavi() {
    var seite = aktuelleSeite;
    pdfKnopf.href = doc.f + "#page=" + seite + (q ? "&search=" + encodeURIComponent(q) : "");
    pdfKnopf.textContent = "PDF, Seite " + seite + " \u2197";
    sucheKnopf.href = "suche.html" + (q ? "?q=" + encodeURIComponent(q) : "");
    tocListe.querySelectorAll("li").forEach(function (li) {
      var s = parseInt(li.getAttribute("data-seite"), 10);
      var a = li.querySelector("a");
      if (a) a.classList.toggle("aktiv", s === seite);
    });
    schreib(LETZTES, { id: doc.id, t: doc.t, seite: seite });
  }

  function starte() {
    PhysikSuche.laden().then(function (idx) {
      doc = idx.docs.filter(function (d) { return d.id === docId; })[0];
      if (!doc) {
        titelFeld.textContent = "Dokument nicht gefunden";
        artikel.innerHTML = '<p class="lese-block">Das gewählte Dokument gibt es nicht. ' +
          '<a href="./">Zur Übersicht</a></p>';
        return;
      }
      seiten = idx.seiten[idx.docs.indexOf(doc)] || [];
      document.title = doc.t + " – Textansicht";
      titelFeld.textContent = doc.t;
      metaFeld.textContent = doc.n + " Seiten · " + doc.k;

      idx.docs.forEach(function (d) {
        var gruppe = docWahl.querySelector('optgroup[label="' + (d.g === "skripte" ? "Lernskripte" : "Zusatzmaterial") + '"]');
        if (!gruppe) {
          gruppe = document.createElement("optgroup");
          gruppe.label = d.g === "skripte" ? "Lernskripte" : "Zusatzmaterial";
          docWahl.appendChild(gruppe);
        }
        var opt = document.createElement("option");
        opt.value = d.id;
        opt.textContent = d.t;
        if (d.id === doc.id) opt.selected = true;
        gruppe.appendChild(opt);
      });
      docWahl.addEventListener("change", function () {
        window.location.href = "lesen.html?doc=" + encodeURIComponent(docWahl.value);
      });

      eingabe.value = q;
      if (q) eingabe.setAttribute("placeholder", "In diesem Dokument suchen …");

      function zeigeGelesen(ist) {
        gelesenKnopf.setAttribute("aria-pressed", ist ? "true" : "false");
        gelesenKnopf.textContent = ist ? "\u2713 gelesen" : "gelesen";
      }
      zeigeGelesen(lies(GELESEN, []).indexOf(doc.id) !== -1);
      gelesenKnopf.addEventListener("click", function () {
        var liste = lies(GELESEN, []);
        var i = liste.indexOf(doc.id);
        if (i === -1) liste.push(doc.id); else liste.splice(i, 1);
        schreib(GELESEN, liste);
        zeigeGelesen(liste.indexOf(doc.id) !== -1);
      });

      if (startSeite > 1 && !q) {
        aktuelleSeite = startSeite;
      }
      zeichne(true);
      if (!q && startSeite > 1) {
        var ziel = document.getElementById("seite-" + startSeite);
        if (ziel) springeZu(ziel);
      }
      if (q) eingabe.select();
      if (wunschTitel) {
        Array.prototype.some.call(
          artikel.querySelectorAll(".ueberschrift, .unterueberschrift"),
          function (knoten) {
            if (knoten.textContent.trim() !== wunschTitel) return false;
            springeZu(knoten);
            return true;
          });
      }
      if (window.location.hash) {
        var marke = document.getElementById(window.location.hash.slice(1));
        if (marke) springeZu(marke);
      }

      var beobachter = new IntersectionObserver(function (eintraege) {
        eintraege.forEach(function (e) {
          if (e.isIntersecting) {
            aktuelleSeite = parseInt(e.target.id.replace("seite-", ""), 10) || aktuelleSeite;
            aktualisiereNavi();
          }
        });
      }, { rootMargin: "-90px 0px -60% 0px", threshold: 0 });
      artikel.querySelectorAll(".lese-seite").forEach(function (s) { beobachter.observe(s); });
    }).catch(function (fehler) {
      titelFeld.textContent = "Fehler";
      artikel.innerHTML = '<p class="lese-block">' + PhysikSuche.escape(String(fehler.message || fehler)) + "</p>";
    });
  }

  var zeit = null;
  if (eingabe) {
    eingabe.addEventListener("input", function () {
      clearTimeout(zeit);
      zeit = setTimeout(function () {
        q = eingabe.value;
        var y = window.scrollY;
        zeichne(true);
        window.scrollTo(0, y);
        if (q && marken.length) zeige(markeAufSeite(aktuelleSeite), true);
        var url = "lesen.html?doc=" + encodeURIComponent(doc.id) + "&seite=" + aktuelleSeite +
          (q ? "&q=" + encodeURIComponent(q) : "");
        history.replaceState(null, "", url);
      }, 180);
    });
    eingabe.addEventListener("keydown", function (e) {
      if (e.key === "Enter" && marken.length) { e.preventDefault(); zeige(stelle + 1, true); }
      if (e.key === "Escape") { eingabe.value = ""; eingabe.dispatchEvent(new Event("input")); eingabe.blur(); }
    });
  }

  document.getElementById("vor").addEventListener("click", function () { zeige(stelle + 1, true); });
  document.getElementById("zurueck").addEventListener("click", function () { zeige(stelle - 1, true); });
  document.addEventListener("keydown", function (e) {
    if (/^(INPUT|TEXTAREA|SELECT)$/.test(document.activeElement.tagName)) return;
    if (e.key === "n" || e.key === "ArrowRight") { zeige(stelle + 1, true); }
    else if (e.key === "p" || e.key === "ArrowLeft") { zeige(stelle - 1, true); }
    else if (e.key === "/") { e.preventDefault(); eingabe.focus(); eingabe.select(); }
  });

  starte();
})();
