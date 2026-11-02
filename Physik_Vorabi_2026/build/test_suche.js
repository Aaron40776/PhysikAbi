/* Prüft die Suchlogik aus web/suche.js gegen den gebauten Index. */
"use strict";
const fs = require("fs");
const path = require("path");
const assert = require("assert");

const site = process.argv[2];
if (!site) {
  console.error("Aufruf: node test_suche.js <_site>");
  process.exit(2);
}
const roh = fs.readFileSync(path.join(site, "suche.json"), "utf8");

global.window = {};
global.fetch = () => Promise.resolve({ ok: true, json: () => Promise.resolve(JSON.parse(roh)) });

require(path.join(site, "assets", "suche.js"));
const S = window.PhysikSuche;

const pruefungen = [];
function pruefe(name, fn) {
  try {
    fn();
    pruefungen.push([true, name]);
  } catch (fehler) {
    pruefungen.push([false, name + ": " + fehler.message]);
  }
}

S.laden().then((idx) => {
  const dok = (id) => idx.docs.findIndex((d) => d.id === id);

  pruefe("7 Kernkapitel, 51 Seiten", () => {
    assert.strictEqual(idx.docs.length, 7);
    assert.strictEqual(idx.docs.reduce((s, d) => s + d.n, 0), 51);
    idx.docs.forEach((d) => {
      assert.strictEqual(idx.seiten[dok(d.id)].length, d.n, "Seitenzahl " + d.id);
    });
  });

  pruefe("keine laufenden Kopfzeilen im Index", () => {
    idx.seiten.forEach((seiten) =>
      seiten.forEach((bl) =>
        bl.forEach((t) => assert(!t.includes("Physik · Vorabi 2026"), "Kopfzeile: " + t.slice(0, 40)))
      )
    );
  });

  pruefe("Normalisierung: Umlaute, ß, Trennstriche", () => {
    assert.strictEqual(S.norm("Straße äöü Zwischen-wert"), "strasse aou zwischenwert");
  });

  pruefe("Zerlegung: Anführungszeichen und Ausschluss", () => {
    const t = S.zerlege('"Bragg Reflexion" -gitter lambda');
    assert.strictEqual(t.length, 3);
    assert.strictEqual(t[0].phrase, true);
    assert.strictEqual(t[1].neg, true);
    assert(t[2].varianten.includes("λ"), "lambda wird zu λ");
  });

  pruefe("Markieren trifft die Originalschreibweise", () => {
    const html = S.markiere("8 Bragg-Reflexion und Straße", S.zerlege("bragg strasse"));
    assert(html.includes("<mark>Bragg</mark>"), html);
    assert(html.includes("<mark>Straße</mark>"), html);
  });

  pruefe("Ausschnitt enthält Markierung und Auslassungszeichen", () => {
    const text = "Vorlauf ".repeat(40) + "Die Bragg-Bedingung lautet 2dsin(θ)=nλ." + " Nachlauf".repeat(40);
    const aus = S.ausschnitt(text, S.zerlege("Bragg"));
    assert(aus.includes("<mark>Bragg</mark>"), aus);
    assert(aus.startsWith("…"), aus);
  });

  pruefe("Bragg: Skript 1, Seite 7, Überschrift zuerst", () => {
    const e = S.suche("Bragg", 3);
    assert(e && e.anzahl > 5, "Treffer");
    const g = e.gruppen[0];
    assert.strictEqual(g.doc.id, "01_Wellen_und_Interferenz");
    assert.strictEqual(g.treffer[0].seite, 7, "Überschrift auf Seite 7 zuerst");
    assert(g.treffer.every((t) => S.ausschnitt(t.text, e.tokens).includes("<mark>")), "jeder Treffer markiert");
  });

  pruefe("Treffer nennt den richtigen Abschnitt", () => {
    const t = S.suche("Bragg", 3).gruppen[0].treffer[0];
    assert.strictEqual(t.abschnitt, "8 Bragg-Reflexion");
    const t2 = S.suche("Rutherford", 3).gruppen[0].treffer[0];
    assert.strictEqual(t2.abschnitt, "1 Rutherford-Streuversuch");
  });

  pruefe("Mehrere Wörter mit und ohne Bindestrich", () => {
    const mit = S.suche("Franck Hertz");
    const ohne = S.suche("Franck-Hertz");
    [mit, ohne].forEach((e) => {
      assert(e && e.anzahl > 0, "Treffer");
      assert(e.gruppen.some((g) => g.doc.id === "07_Spektren_und_Franck_Hertz"), "Skript 7 dabei");
    });
  });

  pruefe("Formelzeichen als Name (lambda → λ)", () => {
    const e = S.suche("lambda");
    assert(e && e.anzahl > 20, "viele Treffer");
    assert(e.gruppen[0].treffer[0].text.length > 60, "Fließtext vor Formelbruchstück");
  });

  pruefe("Phrase wird nur als Wortfolge gefunden", () => {
    const e = S.suche('"Bragg Reflexion"');
    assert(e && e.anzahl > 0, "Treffer");
    assert(e.anzahl < S.suche("bragg").anzahl, "Phrase ist enger");
  });

  pruefe("Ausschluss verringert Treffer", () => {
    const ohne = S.suche("wellenlänge");
    const mit = S.suche("wellenlänge -formel");
    assert(ohne.anzahl >= mit.anzahl);
  });

  pruefe("Kein Treffer bei Fantasiewort", () => {
    const e = S.suche("xyzzyplugh");
    assert(!e || e.anzahl === 0);
  });

  pruefe("Thema führt zum richtigen Skript", () => {
    [["Rutherford", "06_Atommodelle_und_Orbitalmodell"],
     ["Franck-Hertz", "07_Spektren_und_Franck_Hertz"],
     ["Komplementarität", "04_Doppelspalt_und_Quantenphysik"],
     ["Michelson", "01_Wellen_und_Interferenz"]].forEach(([q, id]) => {
      assert.strictEqual(S.suche(q, 3).gruppen[0].doc.id, id, q);
    });
  });

  pruefe("Ziel-URLs zeigen in die Lesefassung", () => {
    const doc = idx.docs[0];
    const u = S.ziel(doc, 7, "Bragg");
    assert(u.startsWith("lesen/01_Wellen_und_Interferenz.html?"), u);
    assert(u.includes("q=Bragg"), u);
    assert(u.includes("#loc-8"), u);
  });

  pruefe("Mehrwortsuche markiert den ersten Begriff", () => {
    const doc = idx.docs[0];
    assert(S.ziel(doc, 7, "Bragg Gitter").includes("q=Bragg"));
    assert(S.ziel(doc, 7, '"Bragg Reflexion"').includes("q=Bragg"));
    assert(S.ziel(doc, 7, "-Compton Bragg").includes("q=Bragg"));
    assert(!S.ziel(doc, 7, "-Compton").includes("q="));
  });

  const fehler = pruefungen.filter(([ok]) => !ok);
  pruefungen.forEach(([ok, name]) => console.log((ok ? "  ok   " : "  FAIL ") + name));
  if (fehler.length) {
    console.error(fehler.length + " Prüfung(en) fehlgeschlagen");
    process.exit(1);
  }
  console.log(pruefungen.length + " Prüfungen bestanden");
}).catch((fehler) => {
  console.error("Index nicht ladbar:", fehler);
  process.exit(1);
});
