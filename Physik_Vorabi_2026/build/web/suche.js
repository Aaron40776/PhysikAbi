/* Volltextsuche über suche.json – Index, Bewertung, Ausschnitte, Trefferpanel. */
(function () {
  "use strict";

  var SYMBOLE = {
    lambda: "\u03bb", lamda: "\u03bb", omega: "\u03c9", alpha: "\u03b1", beta: "\u03b2",
    gamma: "\u03b3", delta: "\u03b4", epsilon: "\u03b5", theta: "\u03b8", rho: "\u03c1",
    sigma: "\u03c3", tau: "\u03c4", phi: "\u03c6", psi: "\u03c8", pi: "\u03c0",
    mu: "\u00b5", mue: "\u00b5", eta: "\u03b7", kappa: "\u03ba", ohm: "\u03a9",
    hquer: "\u0127"
  };

  var ERSATZ = {
    "\u00e4": "a", "\u00f6": "o", "\u00fc": "u", "\u00c4": "a", "\u00d6": "o", "\u00dc": "u",
    "\u00df": "ss", "\u00e9": "e", "\u00e8": "e", "\u00ea": "e", "\u00e1": "a", "\u00e0": "a",
    "\u00e2": "a", "\u00ed": "i", "\u00ec": "i", "\u00f3": "o", "\u00f2": "o", "\u00f4": "o",
    "\u00fa": "u", "\u00f9": "u", "\u00f1": "n", "\u00e7": "c"
  };

  var TRENNER = { "-": 1, "\u2010": 1, "\u2011": 1, "\u2012": 1, "\u2013": 1, "\u2014": 1,
                  "\u2015": 1, "\u2212": 1, "\u00ad": 1, "\u2060": 1 };

  var cache = new Map();
  var idx = null;
  var ladeversprechen = null;

  function normMitKarte(s) {
    var aus = [], map = [], i = 0;
    while (i < s.length) {
      var cp = s.codePointAt(i);
      var c = String.fromCodePoint(cp);
      i += c.length;
      if (TRENNER[c]) continue;
      var t = ERSATZ[c] || c.toLowerCase();
      for (var k = 0; k < t.length; k++) { aus.push(t[k]); map.push(i - c.length); }
    }
    return { n: aus.join(""), map: map };
  }

  function norm(s) { return normMitKarte(s).n; }

  /* Ein einzelnes Zeichen ist nur als Formelzeichen sinnvoll (λ, Δ, π …). */
  function zuKurz(q) {
    var t = q.trim();
    return !t || (t.length < 2 && /^[a-z0-9äöüß]$/i.test(t));
  }

  function blockNorm(t) {
    var n = cache.get(t);
    if (n === undefined) { n = norm(t); cache.set(t, n); }
    return n;
  }

  function zerlege(q) {
    var teile = q.trim().match(/"[^"]*"|\S+/g) || [];
    var tokens = [];
    teile.forEach(function (roh) {
      var t = roh, neg = false;
      if (t.length > 1 && t.charAt(0) === "-") { neg = true; t = t.slice(1); }
      var phrase = /^".*"$/.test(t);
      if (phrase) t = t.slice(1, -1);
      var varianten = [t];
      if (phrase) varianten.push(t.replace(/\s+/g, ""));  // "Bragg Reflexion" trifft Bragg-Reflexion
      var schluessel = t.toLowerCase().replace(/[\s-]/g, "");
      if (SYMBOLE[schluessel]) varianten.push(SYMBOLE[schluessel]);
      varianten = varianten.map(norm).filter(Boolean);
      if (varianten.length) tokens.push({ neg: neg, phrase: phrase, varianten: varianten });
    });
    return tokens;
  }

  function titelVonSeite(doc, seite) {
    var treffer = "";
    doc.toc.forEach(function (e) { if (e[2] <= seite) treffer = e[1]; });
    return treffer;
  }

  function zaehle(text, v) {
    var c = 0, i = 0;
    while (c < 6) {
      i = text.indexOf(v, i);
      if (i === -1) break;
      c++;
      i += v.length;
    }
    return c;
  }

  function laden() {
    if (idx) return Promise.resolve(idx);
    if (!ladeversprechen) {
      ladeversprechen = fetch("suche.json").then(function (r) {
        if (!r.ok) throw new Error("Index nicht geladen: " + r.status);
        return r.json();
      }).then(function (d) {
        idx = d;
        return idx;
      });
    }
    return ladeversprechen;
  }

  /* Sucht; proDoc begrenzt die Treffer je Dokument. */
  function suche(q, proDoc) {
    if (!idx) return null;
    var tokens = zerlege(q);
    var pos = tokens.filter(function (t) { return !t.neg; });
    var neg = tokens.filter(function (t) { return t.neg; });
    if (!pos.length) return null;
    var grenze = proDoc || 3;
    var gruppen = [];
    var suchbegriff = norm(q.trim());
    var kurzeSuche = pos.every(function (t) {
      return t.varianten.every(function (v) { return v.length <= 2; });
    });

    idx.docs.forEach(function (doc, di) {
      var titelN = norm(doc.t + " " + doc.k + " " + doc.id.replace(/_/g, " "));
      var tocSet = new Set(doc.toc.map(function (t) { return norm(t[1]); }));
      var metaPasst = pos.every(function (tok) {
        return tok.varianten.some(function (v) { return titelN.indexOf(v) !== -1; });
      });
      var titelGenau = norm(doc.t) === suchbegriff;
      var metaBonus = 4 * pos.filter(function (tok) {
        return tok.varianten.some(function (v) { return titelN.indexOf(v) !== -1; });
      }).length;
      var leer = doc.leer || [];
      var eigene = [];

      idx.seiten[di].forEach(function (bloecke, pi) {
        if (leer.indexOf(pi + 1) !== -1) return;
        var abschnitt = titelVonSeite(doc, pi + 1);
        bloecke.forEach(function (text, bi) {
          var n = blockNorm(text);
          if (text.indexOf("\n") === -1 && text.length < 80 && tocSet.has(norm(text.trim()))) {
            abschnitt = text.trim();  // Treffer gehoert zum Abschnitt, der hier beginnt
          }
          var score = 0, start = -1;
          for (var t = 0; t < pos.length; t++) {
            var tok = pos[t], best = 0, bestStart = -1;
            for (var v = 0; v < tok.varianten.length; v++) {
              var wort = tok.varianten[v];
              var i = n.indexOf(wort);
              if (i === -1) continue;
              var anzahl = zaehle(n, wort);
              var amWort = (i === 0 || !/[a-z0-9]/.test(n.charAt(i - 1))) ? 2 : 0;
              var sc = anzahl + amWort + (tok.phrase ? 6 : 0);
              if (sc > best) { best = sc; bestStart = i; }
            }
            if (!best) return;
            score += best;
            if (start === -1) start = bestStart;
          }
          for (var g = 0; g < neg.length; g++) {
            if (neg[g].varianten.some(function (w) { return n.indexOf(w) !== -1; })) return;
          }
          // Nur ein eigener, kurzer Block ist eine Abschnittsüberschrift
          if (text.indexOf("\n") === -1 && text.length < 80 && tocSet.has(norm(text.trim()))) score += 8;
          if (text.length < 25) score -= 3;          // Formelbruchstück
          else if (text.length > 120) score += 2;    // erklärender Absatz
          if (kurzeSuche && text.length > 120) score += 3;
          score += titelGenau ? 12 : metaBonus;      // Dokumentname exakt getroffen
          var kontext = text.length < 120 && bloecke[bi + 1] ? text + " " + bloecke[bi + 1] : text;
          eigene.push({ di: di, seite: pi + 1, block: bi, score: score, text: text,
                        kontext: kontext, abschnitt: abschnitt, pos: start });
        });
      });

      if (!eigene.length && metaPasst) {
        eigene.push({ di: di, seite: doc.toc.length ? doc.toc[0][2] : 1, block: -1, score: 4,
                      text: doc.k || doc.t, kontext: doc.k || doc.t, abschnitt: "",
                      pos: -1 });
      }
      if (!eigene.length) return;
      eigene.sort(function (a, b) { return b.score - a.score || a.seite - b.seite; });
      gruppen.push({ di: di, doc: doc, treffer: eigene.slice(0, grenze), gesamt: eigene.length,
                     max: eigene[0].score + (titelGenau ? 12 : 0) });
    });

    gruppen.sort(function (a, b) { return b.max - a.max || a.di - b.di; });
    var anzahl = gruppen.reduce(function (s, g) { return s + g.gesamt; }, 0);
    return { tokens: tokens, gruppen: gruppen, anzahl: anzahl };
  }

  function escape(s) {
    return s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
  }

  function bereiche(text, tokens) {
    var nm = normMitKarte(text);
    var n = nm.n, map = nm.map, gefunden = [];
    tokens.forEach(function (tok) {
      if (tok.neg) return;
      tok.varianten.forEach(function (v) {
        var i = 0;
        while (i < n.length) {
          i = n.indexOf(v, i);
          if (i === -1) break;
          gefunden.push([map[i], map[i + v.length - 1] + 1]);
          i += v.length;
        }
      });
    });
    gefunden.sort(function (a, b) { return a[0] - b[0] || b[1] - a[1]; });
    var sauber = [];
    gefunden.forEach(function (r) {
      var letzter = sauber[sauber.length - 1];
      if (letzter && r[0] <= letzter[1]) letzter[1] = Math.max(letzter[1], r[1]);
      else sauber.push([r[0], r[1]]);
    });
    return sauber;
  }

  function markiere(text, tokens) {
    var teile = bereiche(text, tokens);
    var html = "", pos = 0;
    teile.forEach(function (r) {
      if (r[0] < pos) return;
      html += escape(text.slice(pos, r[0])) + "<mark>" + escape(text.slice(r[0], r[1])) + "</mark>";
      pos = r[1];
    });
    return html + escape(text.slice(pos));
  }

  function ausschnitt(text, tokens, umgebung) {
    if (!tokens.length) return escape(text.slice(0, 220));
    var teile = bereiche(text, tokens);
    var um = umgebung || 75;
    if (!teile.length) return escape(text.replace(/\s+/g, " ").slice(0, 220));
    var von = Math.max(0, teile[0][0] - um);
    var bis = Math.min(text.length, teile[0][1] + um * 2);
    if (von > 0) {
      var luecke = text.slice(von, teile[0][0]).search(/\s/);
      if (luecke !== -1) von += luecke + 1;
    }
    if (bis < text.length) {
      var schnitt = text.slice(teile[0][1], bis).lastIndexOf(" ");
      if (schnitt !== -1) bis = teile[0][1] + schnitt;
    }
    var stueck = text.slice(von, bis).replace(/\s+/g, " ").trim();
    return (von > 0 ? "\u2026 " : "") + markiere(stueck, tokens) + (bis < text.length ? " \u2026" : "");
  }

  /* PDF.js sucht wörtlich; bei "Bragg Gitter" darf nur ein Begriff markiert werden. */
  function pdfBegriff(q) {
    var teile = q.match(/"[^"]+"|\S+/g) || [];
    for (var i = 0; i < teile.length; i++) {
      var t = teile[i];
      if (t.charAt(0) === "-") continue;
      t = t.replace(/^"|"$/g, "").split(/[\s-]+/)[0];
      if (t) return t;
    }
    return "";
  }

  function ziel(doc, seite, q) {
    var url = "pdfjs/web/viewer.html?file=../../" + encodeURI(doc.f);
    var hash = ["page=" + seite];
    var begriff = pdfBegriff(q || "");
    if (begriff) hash.push("search=" + encodeURIComponent(begriff));
    hash.push("pagemode=none");
    return url + "#" + hash.join("&");
  }

  /* ---------- Trefferpanel für die Startseite ---------- */
  function panel(opt) {
    var eingabe = document.getElementById(opt.input);
    var box = document.getElementById(opt.panel);
    var zaehler = document.getElementById(opt.zaehler);
    var liste = null, gewaehlt = -1, aktuell = null, zeit = null;

    if (!eingabe || !box) return;
    document.body.appendChild(box);

    function positioniere() {
      var r = eingabe.getBoundingClientRect();
      var sicht = window.visualViewport;
      var breite = Math.min(680, (sicht ? sicht.width : window.innerWidth) - 32);
      var links = Math.max(16, Math.min(r.left, window.innerWidth - breite - 16));
      var unten = sicht ? sicht.offsetTop + sicht.height : window.innerHeight;
      box.style.position = "fixed";
      box.style.left = links + "px";
      box.style.top = (r.bottom + 8) + "px";
      box.style.width = breite + "px";
      box.style.maxHeight = Math.max(140, Math.min(560, unten - r.bottom - 16)) + "px";
    }

    window.addEventListener("resize", function () { if (!box.hidden) positioniere(); });
    if (window.visualViewport) {
      window.visualViewport.addEventListener("resize", function () { if (!box.hidden) positioniere(); });
      window.visualViewport.addEventListener("scroll", function () { if (!box.hidden) positioniere(); });
    }

    function schliessen() {
      box.hidden = true;
      eingabe.setAttribute("aria-expanded", "false");
      gewaehlt = -1;
    }

    function zeilen() {
      return Array.prototype.slice.call(box.querySelectorAll(".ztreffer"));
    }

    function waehlen(i) {
      var z = zeilen();
      if (!z.length) return;
      if (gewaehlt >= 0 && z[gewaehlt]) z[gewaehlt].classList.remove("aktiv");
      gewaehlt = (i + z.length) % z.length;
      z[gewaehlt].classList.add("aktiv");
      z[gewaehlt].scrollIntoView({ block: "nearest" });
    }

    function oeffne(link) { window.location.href = link; }

    function zeichne(ergebnis, q) {
      if (!ergebnis || !ergebnis.gruppen.length) {
        box.innerHTML = '<p class="panel-hinweis">Kein Treffer für <b>' + escape(q) + "</b>." +
          "<br>Groß-/Kleinschreibung und Umlaute sind egal; mehrere Wörter werden alle gesucht.</p>";
        positioniere();
        box.hidden = false;
        eingabe.setAttribute("aria-expanded", "true");
        if (zaehler) zaehler.textContent = "0 Treffer";
        return;
      }
      var html = '<div class="panel-kopf"><span><strong>' + ergebnis.anzahl + "</strong> Treffer in " +
        ergebnis.gruppen.length + (ergebnis.gruppen.length === 1 ? " Dokument" : " Dokumenten") +
        '</span><span class="tasten">\u2191\u2193 w\u00e4hlen \u00b7 Enter \u00f6ffnet</span></div>';
      ergebnis.gruppen.forEach(function (g) {
        html += '<div class="panel-gruppe"><h3>' + escape(g.doc.t) +
          " <span>\u00b7 " + g.gesamt + " Treffer</span></h3>";
        g.treffer.forEach(function (t) {
          html += '<button class="ztreffer" type="button" id="t' + t.di + "-" + t.seite + "-" + t.block + '"' +
            ' data-ziel="' + escape(ziel(g.doc, t.seite, q)) + '">' +
            '<span class="kopf"><span class="seite">S. ' + t.seite + "</span>" +
            "<span>" + escape(t.abschnitt || g.doc.t) + "</span></span>" +
            '<span class="ausschnitt">' + ausschnitt(t.kontext || t.text, ergebnis.tokens) +
            "</span></button>";
        });
        html += "</div>";
      });
      html += '<a class="alle" href="suche.html?q=' + encodeURIComponent(q) + '">Alle ' +
        ergebnis.anzahl + " Treffer anzeigen \u2192</a>";
      box.innerHTML = html;
      positioniere();
      box.hidden = false;
      eingabe.setAttribute("aria-expanded", "true");
      if (zaehler) zaehler.textContent = ergebnis.anzahl + " Treffer";

      zeilen().forEach(function (z, i) {
        z.addEventListener("click", function () {
          oeffne(z.getAttribute("data-ziel"));
        });
        z.addEventListener("mousemove", function () { if (gewaehlt !== i) waehlen(i); });
      });
    }

    function lauf() {
      var q = eingabe.value.trim();
      if (zuKurz(q)) {
        if (zaehler) zaehler.textContent = "";
        schliessen();
        return;
      }
      laden().then(function () {
        if (eingabe.value.trim() !== q) return;
        aktuell = suche(q, 3);
        zeichne(aktuell, q);
      }).catch(function (fehler) {
        box.innerHTML = '<p class="panel-hinweis">' + escape(String(fehler.message || fehler)) + "</p>";
        positioniere();
        box.hidden = false;
      });
    }

    eingabe.addEventListener("input", function () {
      clearTimeout(zeit);
      zeit = setTimeout(lauf, 90);
    });
    eingabe.addEventListener("focus", function () {
      laden().catch(function () {});
      if (eingabe.value.trim().length >= 2) lauf();
    });
    eingabe.addEventListener("keydown", function (e) {
      if (e.key === "ArrowDown") { e.preventDefault(); if (box.hidden) lauf(); else waehlen(gewaehlt + 1); }
      else if (e.key === "ArrowUp") { e.preventDefault(); waehlen(gewaehlt - 1); }
      else if (e.key === "Enter") {
        var z = zeilen();
        var knoten = z[gewaehlt] || z[0];
        if (knoten) { e.preventDefault(); oeffne(knoten.getAttribute("data-ziel")); }
      } else if (e.key === "Escape") {
        schliessen();
        if (eingabe.value) { eingabe.value = ""; if (zaehler) zaehler.textContent = ""; }
        eingabe.blur();
      }
    });
    document.addEventListener("click", function (e) {
      if (!box.hidden && !box.contains(e.target) && e.target !== eingabe) schliessen();
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

  window.PhysikSuche = {
    laden: laden, suche: suche, markiere: markiere, ausschnitt: ausschnitt,
    zerlege: zerlege, norm: norm, ziel: ziel, escape: escape, panel: panel, zuKurz: zuKurz,
    titelVonSeite: titelVonSeite
  };
})();
