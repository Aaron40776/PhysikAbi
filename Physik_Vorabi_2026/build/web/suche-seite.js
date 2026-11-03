/* Trefferseite: alle Fundstellen einer Anfrage, nach Dokument gruppiert. */
(function () {
  "use strict";

  var eingabe = document.getElementById("q");
  var ziel = document.getElementById("ergebnisse");
  var kopf = document.getElementById("kopfzeile");
  var zaehler = document.getElementById("treffer");
  var chips = Array.prototype.slice.call(document.querySelectorAll(".chips button"));

  var gruppe = "";
  var q = new URLSearchParams(window.location.search).get("q") || "";
  var zeit = null;

  function zeichne(ergebnis) {
    if (!ergebnis) {
      ziel.innerHTML = '<p class="leer">Suchbegriff eingeben – gesucht wird im Volltext aller Seiten.</p>';
      if (kopf) kopf.textContent = "";
      if (zaehler) zaehler.textContent = "";
      return;
    }
    var gruppen = ergebnis.gruppen.filter(function (g) { return !gruppe || g.doc.g === gruppe; });
    var anzahl = gruppen.reduce(function (s, g) { return s + g.gesamt; }, 0);
    var anzeige = q.trim().replace(/^"+|"+$/g, "");
    if (kopf) {
      kopf.innerHTML = "<b>" + anzahl + "</b> Treffer in " + gruppen.length +
        (gruppen.length === 1 ? " Dokument" : " Dokumenten") + " für „" +
        PhysikSuche.escape(anzeige) + "“";
    }
    if (zaehler) zaehler.textContent = anzahl + " Treffer";
    if (!gruppen.length) {
      ziel.innerHTML = '<p class="leer">Kein Treffer. Andere Schreibweise oder kürzerer Begriff?</p>';
      return;
    }
    var html = "";
    if (ergebnis.korrektur) {
      html += '<p class="lese-hinweis">Meinten Sie <a href="suche.html?q=' +
        encodeURIComponent(ergebnis.korrektur.vorschlag) + '">' +
        PhysikSuche.escape(ergebnis.korrektur.vorschlag) + "</a>? " +
        "Die Treffer beziehen sich auf die korrigierte Schreibweise.</p>";
    }
    var nurZeichen = ergebnis.tokens.every(function (t) {
      return t.varianten.some(function (v) { return v.length <= 2; });
    });
    if (nurZeichen && anzahl > 40) {
      html += '<p class="lese-hinweis">„' + PhysikSuche.escape(anzeige) +
        "“ ist ein Formelzeichen und steht auf fast jeder Seite. Gezielter suchen: „Wellenlänge“ " +
        "oder ein Thema wie „Photoeffekt“.</p>";
    }
    gruppen.forEach(function (g) {
      html += '<div class="gruppe-titel"><h2>' + PhysikSuche.escape(g.doc.t) +
        "</h2><span>" + g.gesamt + " Treffer" +
        ' · <a href="' + PhysikSuche.escape(PhysikSuche.ziel(g.doc, 1)) + '">Dokument</a></span></div>';
      g.treffer.forEach(function (t) {
        html += '<a class="ergebnis" href="' + PhysikSuche.escape(PhysikSuche.ziel(g.doc, t.seite, q.trim())) + '">' +
          '<span class="kopf"><span class="seite">S. ' + t.seite + "</span>" +
          "<span>" + PhysikSuche.escape(t.abschnitt || PhysikSuche.titelVonSeite(g.doc, t.seite)) +
          "</span></span>" +
          '<span class="ausschnitt">' + PhysikSuche.ausschnitt(t.kontext || t.text, ergebnis.tokens, 90) +
          "</span></a>";
      });
      if (g.gesamt > g.treffer.length) {
        html += '<p class="meta" style="padding:6px 12px">… ' + (g.gesamt - g.treffer.length) +
          " weitere Treffer – <a href=\"" + PhysikSuche.escape(PhysikSuche.ziel(g.doc, 1, q.trim())) +
          "\">im Dokument suchen →</a></p>";
      }
    });
    ziel.innerHTML = html;
  }

  function lauf() {
    q = eingabe.value;
    if (PhysikSuche.zuKurz(q)) {
      if (q.trim()) {
        ziel.innerHTML = '<p class="leer">Bitte mindestens zwei Zeichen eingeben.</p>';
      } else {
        zeichne(null);
      }
      if (kopf) kopf.textContent = "";
      if (zaehler) zaehler.textContent = "";
      return;
    }
    PhysikSuche.laden().then(function () {
      zeichne(PhysikSuche.suche(q, 40));
      var url = "suche.html?q=" + encodeURIComponent(q.trim());
      history.replaceState(null, "", url);
    }).catch(function (fehler) {
      ziel.innerHTML = '<p class="leer">' + PhysikSuche.escape(String(fehler.message || fehler)) + "</p>";
    });
  }

  if (eingabe) {
    eingabe.addEventListener("input", function () {
      clearTimeout(zeit);
      zeit = setTimeout(lauf, 120);
    });
    eingabe.addEventListener("keydown", function (e) {
      if (e.key === "Escape") { eingabe.value = ""; lauf(); eingabe.blur(); }
    });
    document.addEventListener("keydown", function (e) {
      if (e.key === "/" && document.activeElement !== eingabe &&
          !/^(INPUT|TEXTAREA|SELECT)$/.test(document.activeElement.tagName)) {
        e.preventDefault();
        eingabe.focus();
        eingabe.select();
      }
    });
  }

  chips.forEach(function (knopf) {
    knopf.addEventListener("click", function () {
      gruppe = knopf.getAttribute("data-gruppe");
      chips.forEach(function (k) { k.setAttribute("aria-pressed", k === knopf ? "true" : "false"); });
      if (!PhysikSuche.zuKurz(q)) lauf();
    });
  });

  if (eingabe) {
    eingabe.value = q;
    if (q) lauf();
    else zeichne(null);
  }
})();
