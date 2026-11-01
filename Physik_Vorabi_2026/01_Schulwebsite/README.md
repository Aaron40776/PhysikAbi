# Schulwebsite-Spiegel

Vollständiger Spiegel der Unterrichtsseiten von https://www.physik.gym-wst.de
(112 Seiten, Stand 01.11.2026). Zweck: Beleg, dass die Lernskripte aus dem eigenen
Unterricht stammen. **Inhaltlich unverändert** – hier wird nichts gekürzt oder umgeschrieben.

## Relevanz fürs Vorabi

`website_links.csv` hat die Spalte `Vorabi` (`ja`/`nein`). Zuordnung:

| Bereich | Seiten | Vorabi |
|---|---:|---|
| Schwingungen/Wellen, Quantenobjekte, Atomhülle, Grundlagen, Praktikum | 77 | ja |
| Kinematik, Dynamik, Kosmologie | 16 | nein |
| Elektrisches Feld, Magnetfeld, Atomkern | 19 | nein |
| **Summe** | **112** | |

Die 35 Seiten mit `nein` gehören nicht zur Vorabi-Liste. Sie bleiben im Repo, damit der
Spiegel vollständig ist; zum Lernen brauchst du sie nicht.

Nur die relevanten Seiten auflisten:

```bash
grep ';ja$' website_links.csv | cut -d';' -f2
```

## Aufbau

`materialien/docs/<jg>/<thema>/<lektion>/docs.md` – dieselbe Struktur wie die Website.
Formeln sind dort bereits als LaTeX (`$...$`) gesetzt.
