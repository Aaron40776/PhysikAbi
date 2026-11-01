/* Mobile Leseseite: Inhaltsverzeichnis, Kästen, Fortschritt, Schriftgröße. */
(function () {
  "use strict";

  var doc = document.body.getAttribute("data-doc") || "";
  var text = document.getElementById("lesetext");
  var balken = document.getElementById("fortschritt");
  var params = new URLSearchParams(window.location.search);
  if (!text) return;

  var nav = text.querySelector('nav[role="doc-toc"]');
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

  var tick = 0;
  window.addEventListener("scroll", function () {
    if (tick) return;
    tick = window.requestAnimationFrame(function () {
      tick = 0; fortschritt(); merken();
    });
  }, { passive: true });
  fortschritt();

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
