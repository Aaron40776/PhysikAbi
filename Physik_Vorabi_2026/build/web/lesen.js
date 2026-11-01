/* Textansicht: liest die bereits extrahierten Seiten aus suche.json. */
(function () {
  "use strict";

  var params = new URLSearchParams(window.location.search);
  var docId = params.get("doc") || "";
  var seite = Math.max(1, parseInt(params.get("seite") || "1", 10) || 1);
  var titel = document.getElementById("lese-titel");
  var meta = document.getElementById("lese-meta");
  var text = document.getElementById("lesetext");
  var oben = document.getElementById("lese-nav-oben");
  var unten = document.getElementById("lese-nav-unten");
  var pdfLink = document.getElementById("lese-pdf");
  var wahl = document.getElementById("seite-wahl");

  function pdfZiel(doc, s) {
    var datei = doc.f.split("/").map(encodeURIComponent).join("/");
    return "pdfjs/web/viewer.html?file=../../" + datei + "#page=" + s + "&pagemode=none";
  }

  function textZiel(doc, s) {
    return "lesen.html?doc=" + encodeURIComponent(doc.id) + "&seite=" + s;
  }

  function abschnitt(doc, s) {
    var treffer = "";
    (doc.toc || []).forEach(function (e) {
      if (e[2] <= s) treffer = e[1];
    });
    return treffer;
  }

  function navBauen(doc) {
    [oben, unten].forEach(function (box) {
      if (!box) return;
      box.textContent = "";
      if (seite > 1) {
        var zurueck = document.createElement("a");
        zurueck.href = textZiel(doc, seite - 1);
        zurueck.textContent = "← Seite " + (seite - 1);
        box.appendChild(zurueck);
      } else {
        var leer = document.createElement("span");
        leer.textContent = "← Anfang";
        box.appendChild(leer);
      }
      var pdf = document.createElement("a");
      pdf.href = pdfZiel(doc, seite);
      pdf.textContent = "Im PDF";
      box.appendChild(pdf);
      if (seite < doc.n) {
        var vor = document.createElement("a");
        vor.href = textZiel(doc, seite + 1);
        vor.textContent = "Seite " + (seite + 1) + " →";
        box.appendChild(vor);
      } else {
        var ende = document.createElement("span");
        ende.textContent = "Ende →";
        box.appendChild(ende);
      }
    });
  }

  function wahlBauen(doc) {
    if (!wahl) return;
    wahl.textContent = "";
    for (var i = 1; i <= doc.n; i++) {
      var opt = document.createElement("option");
      opt.value = String(i);
      opt.textContent = "Seite " + i + " von " + doc.n;
      if (i === seite) opt.selected = true;
      wahl.appendChild(opt);
    }
  }

  function zeige(doc, seiten) {
    seite = Math.min(Math.max(1, seite), doc.n);
    document.title = doc.t + " – Seite " + seite;
    titel.textContent = doc.t;
    var abs = abschnitt(doc, seite);
    meta.textContent = "Seite " + seite + " von " + doc.n +
      (abs ? " · " + abs : "");
    text.textContent = "";
    var bloecke = seiten[seite - 1] || [];
    if (!bloecke.length) {
      var hinweis = document.createElement("p");
      hinweis.className = "leer";
      hinweis.textContent = "Auf dieser Seite gibt es keinen extrahierbaren Text. " +
        "Öffne sie im PDF, um Abbildungen und Satz zu sehen.";
      text.appendChild(hinweis);
    } else {
      bloecke.forEach(function (block) {
        var p = document.createElement("p");
        p.textContent = block;
        text.appendChild(p);
      });
    }
    if (pdfLink) pdfLink.href = pdfZiel(doc, seite);
    navBauen(doc);
    wahlBauen(doc);
    window.history.replaceState(null, "", textZiel(doc, seite));
    try {
      var weiter = JSON.parse(localStorage.getItem("physik.weiter") || "{}");
      weiter[doc.id] = { seite: seite, n: doc.n };
      localStorage.setItem("physik.weiter", JSON.stringify(weiter));
    } catch (e) {}
  }

  fetch("suche.json").then(function (r) {
    if (!r.ok) throw new Error("Suchindex nicht erreichbar");
    return r.json();
  }).then(function (daten) {
    var i = daten.docs.findIndex(function (d) { return d.id === docId; });
    if (i < 0) throw new Error("Dokument nicht gefunden");
    zeige(daten.docs[i], daten.seiten[i] || []);
    document.getElementById("lesetext").focus();
    if (wahl) {
      wahl.addEventListener("change", function () {
        window.location.href = textZiel(daten.docs[i], parseInt(wahl.value, 10));
      });
    }
  }).catch(function (fehler) {
    titel.textContent = "Text nicht verfügbar";
    meta.textContent = String(fehler.message || fehler);
    text.innerHTML = '<p class="leer">Zurück zur <a href="./">Übersicht</a>.</p>';
  });

  document.addEventListener("keydown", function (e) {
    if (/^(INPUT|TEXTAREA|SELECT)$/.test(document.activeElement.tagName)) return;
    if (e.key === "ArrowLeft" && seite > 1) {
      window.location.href = textZiel({id: docId}, seite - 1);
    } else if (e.key === "ArrowRight") {
      window.location.href = textZiel({id: docId}, seite + 1);
    }
  });

  if (window.PhysikSuche) {
    PhysikSuche.panel({ input: "q", panel: "panel", zaehler: "treffer" });
  }
})();
