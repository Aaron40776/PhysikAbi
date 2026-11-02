/* Glossar: filtern nach Begriff, Stichwort und Definition. */
(function () {
  "use strict";

  var feld = document.getElementById("glossar-filter");
  var zaehler = document.getElementById("glossar-zaehler");
  var leer = document.getElementById("glossar-leer");
  var eintraege = Array.prototype.slice.call(document.querySelectorAll(".glossar-eintrag"));
  var gruppen = Array.prototype.slice.call(document.querySelectorAll(".glossar-gruppe"));
  var startQ = new URLSearchParams(window.location.search).get("q") || "";

  function norm(s) {
    return String(s).toLowerCase()
      .replace(/ä/g, "a").replace(/ö/g, "o").replace(/ü/g, "u").replace(/ß/g, "ss")
      .replace(/[‐‑‒–—−-]/g, " ").replace(/\s+/g, " ").trim();
  }

  function lauf() {
    var q = norm(feld.value);
    var sichtbar = 0;
    eintraege.forEach(function (eintrag) {
      var passt = !q || eintrag.getAttribute("data-suche").indexOf(q) !== -1;
      eintrag.hidden = !passt;
      eintrag.classList.remove("glossar-treffer");
      if (passt) sichtbar++;
    });
    gruppen.forEach(function (gruppe) {
      gruppe.hidden = !gruppe.querySelector(".glossar-eintrag:not([hidden])");
    });
    if (zaehler) zaehler.textContent = q ? sichtbar + " von " + eintraege.length + " Begriffen" : eintraege.length + " Begriffe";
    if (leer) leer.hidden = sichtbar !== 0;
  }

  function springeZuErstem() {
    var q = norm(feld.value);
    var eintrag = null;
    eintraege.forEach(function (kandidat) {
      if (kandidat.hidden) return;
      var titel = kandidat.querySelector("dt");
      if (!eintrag && titel && norm(titel.textContent) === q) eintrag = kandidat;
    });
    eintrag = eintrag || document.querySelector(".glossar-eintrag:not([hidden])");
    if (!eintrag) return;
    var dt = eintrag.querySelector("dt");
    if (!dt) return;
    eintrag.classList.add("glossar-treffer");
    var reduz = window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches;
    dt.scrollIntoView({ block: "center", behavior: reduz ? "auto" : "smooth" });
  }

  if (feld) {
    if (startQ) feld.value = startQ;
    feld.addEventListener("input", function () {
      lauf();
      if (window.history && history.replaceState) {
        var q = feld.value.trim();
        try {
          history.replaceState(null, "", window.location.pathname + (q ? "?q=" + encodeURIComponent(q) : ""));
        } catch (e) { /* z. B. file:// */ }
      }
    });
    feld.addEventListener("keydown", function (e) {
      if (e.key === "Enter") { e.preventDefault(); springeZuErstem(); }
    });
    Array.prototype.forEach.call(document.querySelectorAll('.glossar-az a[href^="#glossar-"]'),
      function (link) {
        link.addEventListener("click", function () {
          if (!feld.value.trim()) return;
          feld.value = "";
          lauf();
          if (window.history && history.replaceState) {
            try { history.replaceState(null, "", window.location.pathname); } catch (e) {}
          }
        });
      });
    document.addEventListener("keydown", function (e) {
      if (e.key === "/" && document.activeElement !== feld &&
          !/^(INPUT|TEXTAREA|SELECT)$/.test(document.activeElement.tagName)) {
        e.preventDefault();
        feld.focus();
        feld.select();
      }
    });
    lauf();
    if (startQ) springeZuErstem();
  }

  if (window.PhysikSuche) {
    PhysikSuche.panel({ input: "q", panel: "panel", zaehler: "treffer" });
  }
})();
