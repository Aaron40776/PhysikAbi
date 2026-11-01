/* Hell/Dunkel-Umschalter. Das gespeicherte Design wird vor dem ersten
   Bildaufbau gesetzt, damit die Seite nicht kurz hell aufblitzt. */
(function () {
  "use strict";

  var SCHLUESSEL = "physik.theme";

  try {
    var gespeichert = localStorage.getItem(SCHLUESSEL);
    if (gespeichert === "light" || gespeichert === "dark") {
      document.documentElement.dataset.theme = gespeichert;
    }
  } catch (e) {}

  function systemDunkel() {
    return window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches;
  }

  function aktiv() {
    return document.documentElement.dataset.theme || (systemDunkel() ? "dark" : "light");
  }

  function zeichne() {
    var knopf = document.getElementById("thema");
    var dunkel = aktiv() === "dark";
    document.querySelectorAll('meta[name="theme-color"]').forEach(function (meta) {
      meta.setAttribute("content", dunkel ? "#14161a" : "#1F3864");
    });
    if (!knopf) return;
    knopf.textContent = dunkel ? "☀" : "☾";
    knopf.setAttribute("aria-label", dunkel ? "Helles Design einschalten" : "Dunkles Design einschalten");
    knopf.setAttribute("title", dunkel ? "Helles Design" : "Dunkles Design");
    knopf.setAttribute("aria-pressed", dunkel ? "true" : "false");
  }

  function setzen(wert) {
    document.documentElement.dataset.theme = wert;
    try { localStorage.setItem(SCHLUESSEL, wert); } catch (e) {}
    zeichne();
  }

  function start() {
    zeichne();
    var knopf = document.getElementById("thema");
    if (knopf) {
      knopf.addEventListener("click", function () {
        setzen(aktiv() === "dark" ? "light" : "dark");
      });
    }
    if (window.matchMedia) {
      var mq = window.matchMedia("(prefers-color-scheme: dark)");
      if (mq.addEventListener) mq.addEventListener("change", zeichne);
    }
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", start);
  } else {
    start();
  }
})();
