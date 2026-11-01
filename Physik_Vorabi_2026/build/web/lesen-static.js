/* Mobile Leseseite: Inhaltsverzeichnis, Kästen, Fortschritt, Schriftgröße. */
(function () {
  "use strict";

  var doc = document.body.getAttribute("data-doc") || "";
  var text = document.getElementById("lesetext");
  var balken = document.getElementById("fortschritt");
  var params = new URLSearchParams(window.location.search);
  if (!text) return;

  var nav = text.querySelector('nav[role="doc-toc"]');
  var inhaltLinks = [];
  var abschnitte = [];
  if (nav) {
    var davor = nav.previousElementSibling;
    if (davor && davor.tagName === "P" && davor.textContent.trim() === "Inhalt") {
      davor.remove();
    }
    var details = document.createElement("details");
    details.className = "lese-inhalt";
    var summary = document.createElement("summary");
    summary.textContent = "Inhalt";
    details.appendChild(summary);
    nav.parentNode.insertBefore(details, nav);
    details.appendChild(nav);
    if (window.innerWidth >= 900) details.open = true;
    inhaltLinks = Array.prototype.slice.call(nav.querySelectorAll('a[href^="#loc-"]'));
    abschnitte = Array.prototype.slice.call(text.querySelectorAll("h2[id]"));
  }

  var kasten = /^(Definition|Merksatz|Herleitung|Achtung|Experiment|Prüfungsrelevanz|Aufgabe|Lösung|Quellen)/;
  Array.prototype.forEach.call(text.children, function (el) {
    if (el.tagName !== "DIV" || el === nav) return;
    var erst = el.querySelector("p, strong");
    var label = (erst ? erst.textContent : "").trim();
    var treffer = label.match(kasten);
    if (treffer) {
      el.classList.add("callout", "callout-" + treffer[1].toLowerCase()
        .replace(/ä/g, "a").replace(/ö/g, "o").replace(/ü/g, "u").replace(/ß/g, "ss")
        .replace(/[^a-z]/g, ""));
    }
  });

  function markiereSuchwort(roh) {
    var begriff = (roh || "").trim().replace(/^"+|"+$/g, "").split(/\s+/)[0];
    if (begriff.length < 2) return;
    var suche = begriff.toLocaleLowerCase("de");
    var walker = document.createTreeWalker(text, NodeFilter.SHOW_TEXT, {
      acceptNode: function (knoten) {
        var eltern = knoten.parentElement;
        if (!eltern || !knoten.nodeValue.trim()) return NodeFilter.FILTER_REJECT;
        if (eltern.closest("nav, math, svg, script, style, mark")) return NodeFilter.FILTER_REJECT;
        return knoten.nodeValue.toLocaleLowerCase("de").indexOf(suche) === -1
          ? NodeFilter.FILTER_REJECT : NodeFilter.FILTER_ACCEPT;
      }
    });
    var knoten = [];
    while (walker.nextNode()) knoten.push(walker.currentNode);
    knoten.forEach(function (knoten) {
      var rest = knoten.nodeValue;
      var stelle = rest.toLocaleLowerCase("de").indexOf(suche);
      if (stelle === -1) return;
      var fragment = document.createDocumentFragment();
      while (stelle !== -1) {
        if (stelle > 0) fragment.appendChild(document.createTextNode(rest.slice(0, stelle)));
        var marke = document.createElement("mark");
        marke.className = "suchtreffer";
        marke.textContent = rest.slice(stelle, stelle + begriff.length);
        fragment.appendChild(marke);
        rest = rest.slice(stelle + begriff.length);
        stelle = rest.toLocaleLowerCase("de").indexOf(suche);
      }
      if (rest) fragment.appendChild(document.createTextNode(rest));
      knoten.parentNode.replaceChild(fragment, knoten);
    });
    var erster = text.querySelector("mark.suchtreffer");
    if (erster) {
      window.requestAnimationFrame(function () {
        erster.scrollIntoView({ block: "center", behavior: sanft() });
      });
    }
  }

  var ruhig = window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  function sanft() {
    return ruhig ? "auto" : "smooth";
  }

  /* Abbildungen antippen oder mit Enter öffnen: lesbar ohne Pinch-Zoom. */
  var dialog = document.createElement("dialog");
  dialog.className = "bild-dialog";
  dialog.setAttribute("aria-label", "Abbildung in voller Größe");
  dialog.innerHTML = '<button type="button" class="bild-schliessen" aria-label="Schließen">×</button><img alt=""><p></p>';
  document.body.appendChild(dialog);
  var dialogBild = dialog.querySelector("img");
  var dialogText = dialog.querySelector("p");
  var schliessen = dialog.querySelector(".bild-schliessen");

  function zeigeBild(img) {
    var fig = img.closest("figure");
    var cap = fig ? fig.querySelector("figcaption") : null;
    dialogBild.src = img.currentSrc || img.src;
    dialogBild.alt = img.alt || (cap ? cap.textContent.trim() : "Abbildung");
    dialogText.textContent = cap ? cap.textContent.trim() : "";
    if (typeof dialog.showModal === "function") dialog.showModal();
  }

  Array.prototype.forEach.call(text.querySelectorAll("figure img"), function (img) {
    img.setAttribute("role", "button");
    img.setAttribute("tabindex", "0");
    img.setAttribute("aria-label", "Abbildung vergrößern");
    img.addEventListener("click", function () { zeigeBild(img); });
    img.addEventListener("keydown", function (e) {
      if (e.key === "Enter" || e.key === " ") {
        e.preventDefault();
        zeigeBild(img);
      }
    });
  });
  schliessen.addEventListener("click", function () { dialog.close(); });
  dialog.addEventListener("click", function (e) {
    if (e.target === dialog) dialog.close();
  });

  /* Zurück nach oben, sobald man tiefer im Dokument ist. */
  var oben = document.createElement("button");
  oben.type = "button";
  oben.className = "lese-oben";
  oben.setAttribute("aria-label", "Nach oben");
  oben.title = "Nach oben";
  oben.textContent = "↑";
  document.body.appendChild(oben);
  oben.addEventListener("click", function () {
    window.scrollTo({ top: 0, behavior: sanft() });
  });

  function aktualisiereInhalt() {
    if (!inhaltLinks.length || !abschnitte.length) return;
    var grenze = window.scrollY + 120;
    var aktiv = abschnitte[0] ? abschnitte[0].id : "";
    abschnitte.forEach(function (h) {
      if (h.getBoundingClientRect().top + window.scrollY <= grenze) aktiv = h.id;
    });
    inhaltLinks.forEach(function (a) {
      a.classList.toggle("aktiv", a.getAttribute("href") === "#" + aktiv);
    });
  }

  function maxScroll() {
    return Math.max(0, document.documentElement.scrollHeight - window.innerHeight);
  }

  var letzteSpeicherung = 0;
  function merken() {
    if (!doc) return;
    var jetzt = Date.now();
    if (jetzt - letzteSpeicherung < 250) return;
    letzteSpeicherung = jetzt;
    try {
      var alle = JSON.parse(localStorage.getItem("physik.weiter") || "{}");
      var max = maxScroll();
      alle[doc] = {
        seite: 1, n: 0, text: true,
        scroll: Math.round(window.scrollY || 0),
        ratio: max > 0 ? Math.min(1, Math.max(0, (window.scrollY || 0) / max)) : 0
      };
      localStorage.setItem("physik.weiter", JSON.stringify(alle));
    } catch (e) {}
  }

  function fortschritt() {
    var max = maxScroll();
    if (balken) balken.style.width = (max > 0 ? Math.min(100, 100 * (window.scrollY || 0) / max) : 0) + "%";
  }

  function obenSichtbar() {
    var an = (window.scrollY || 0) > 520;
    oben.classList.toggle("sichtbar", an);
    oben.tabIndex = an ? 0 : -1;
  }

  var tick = 0;
  window.addEventListener("scroll", function () {
    if (tick) return;
    tick = window.requestAnimationFrame(function () {
      tick = 0; fortschritt(); merken(); aktualisiereInhalt(); obenSichtbar();
    });
  }, { passive: true });
  fortschritt(); aktualisiereInhalt(); obenSichtbar();

  var scale = 1;
  try { scale = parseFloat(localStorage.getItem("physik.schrift") || "1") || 1; } catch (e) {}
  scale = Math.min(1.4, Math.max(0.85, scale));
  function setzeScale() {
    text.style.setProperty("--lese-scale", String(scale));
    try { localStorage.setItem("physik.schrift", String(scale)); } catch (e) {}
  }
  setzeScale();
  var kleiner = document.getElementById("kleiner");
  var groesser = document.getElementById("groesser");
  if (kleiner) kleiner.addEventListener("click", function () { scale = Math.max(0.85, scale - 0.08); setzeScale(); });
  if (groesser) groesser.addEventListener("click", function () { scale = Math.min(1.4, scale + 0.08); setzeScale(); });

  if (params.get("q")) markiereSuchwort(params.get("q"));

  if (params.get("weiter") === "1") {
    try {
      var stand = JSON.parse(localStorage.getItem("physik.weiter") || "{}")[doc];
      if (stand && stand.ratio > 0) {
        window.requestAnimationFrame(function () {
          window.scrollTo({ top: Math.round(stand.ratio * maxScroll()), behavior: "instant" });
        });
      }
    } catch (e) {}
  }

  window.addEventListener("pagehide", merken);
})();
