/* Startseite: Volltextsuche, Lernstand, zuletzt gelesen. */
(function () {
  "use strict";

  var GELESEN = "physik.gelesen";
  var LETZTES = "physik.letztes";

  function lies(schluessel, vorgabe) {
    try {
      var wert = JSON.parse(localStorage.getItem(schluessel));
      return wert === null || wert === undefined ? vorgabe : wert;
    } catch (e) { return vorgabe; }
  }

  function schreib(schluessel, wert) {
    try { localStorage.setItem(schluessel, JSON.stringify(wert)); } catch (e) {}
  }

  var karten = Array.prototype.slice.call(document.querySelectorAll(".karte"));
  var fortschrittBar = document.getElementById("fortschritt-bar");
  var fortschrittText = document.getElementById("fortschritt-text");
  var fortschrittReset = document.getElementById("fortschritt-reset");

  function lernstandZeichnen() {
    var gelesen = lies(GELESEN, []);
    var anzahl = 0;
    karten.forEach(function (karte) {
      var id = karte.getAttribute("data-doc");
      var ist = gelesen.indexOf(id) !== -1;
      karte.classList.toggle("gelesen-karte", ist);
      var knopf = karte.querySelector(".gelesen");
      if (knopf) knopf.setAttribute("aria-pressed", ist ? "true" : "false");
      if (ist) anzahl++;
    });
    if (!fortschrittBar) return;
    fortschrittBar.style.width = (karten.length ? (100 * anzahl) / karten.length : 0) + "%";
    fortschrittText.textContent = anzahl + " von " + karten.length + " Dokumenten gelesen";
    fortschrittReset.hidden = anzahl === 0;
  }

  karten.forEach(function (karte) {
    var knopf = karte.querySelector(".gelesen");
    if (knopf) knopf.addEventListener("click", function () {
      var id = karte.getAttribute("data-doc");
      var gelesen = lies(GELESEN, []);
      var i = gelesen.indexOf(id);
      if (i === -1) gelesen.push(id); else gelesen.splice(i, 1);
      schreib(GELESEN, gelesen);
      lernstandZeichnen();
    });
    var titel = karte.querySelector(".titel");
    if (titel) titel.addEventListener("click", function () {
      schreib(LETZTES, { id: karte.getAttribute("data-doc"), t: titel.textContent, seite: 1 });
    });
  });

  if (fortschrittReset) fortschrittReset.addEventListener("click", function () {
    if (!window.confirm("Lernstand für alle Dokumente zurücksetzen?")) return;
    schreib(GELESEN, []);
    lernstandZeichnen();
  });

  var weiter = document.getElementById("weiter");
  var letztes = lies(LETZTES, null);
  if (weiter && letztes && letztes.id) {
    weiter.href = "lesen.html?doc=" + encodeURIComponent(letztes.id) + "&seite=" + (letztes.seite || 1);
    weiter.innerHTML = "Weiterlesen: <b>" + PhysikSuche.escape(letztes.t || letztes.id) + "</b>" +
      " <span>S. " + (letztes.seite || 1) + "</span>";
    weiter.hidden = false;
  }

  lernstandZeichnen();
  PhysikSuche.panel({ input: "q", panel: "panel", zaehler: "treffer" });

  var oben = document.getElementById("oben");
  var still = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  if (oben) {
    window.addEventListener("scroll", function () { oben.hidden = window.scrollY < 400; },
      { passive: true });
    oben.addEventListener("click", function () {
      window.scrollTo({ top: 0, behavior: still ? "auto" : "smooth" });
    });
  }
})();
