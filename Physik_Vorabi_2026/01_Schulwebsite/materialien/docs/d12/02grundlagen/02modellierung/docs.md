## Modellierung

- Im Unterricht und im Praktikum werden Messungen durchgeführt, Messdaten aufgenommen und in einer Messtabelle notiert.

- Die Messdaten werden grafisch in einem Schaubild dargestellt.

- Auf Basis der Messdaten und des Schaubilds wird eine Regressionshypothese aufgestellt und dann eine möglicherweise geeignete Regresssionsmethoden ausgewählt.

- Mit der gewählten Regression wird mit dem Taschenrechner oder einer geeigneten Software eine mathematische Modellierung in Form einer Funktionsgleichung gesucht, welche die Messdaten geeignet mathematisch modellieren. 

- Die mathematische Funktionsgleichung wird physikalisiert, indem physikalische Größen und Einheiten geeignet eingesetzt und die Zahlen gemäß den Vorgaben gerundet werden.

---

### Beispiel

#### Messwerttabelle

|||||||||||| 
|-|-|-|-|-|-|-|-|-|-|-| 
| $t$ in $\text{s}$  | 0,0 | 1,0 | 2,0 | 3,0 | 4,0 | 5,0 | 6,0 | 7,0 | 8,0 | 9,0 | 
| $I$ in $\text{mA}$ | 2,0 | 2,8 | 3,9 | 5,5 | 7,7 | 10,7| 15,0| 21,1| 29,5| 41,3|

---

#### Schaubild erstellen

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAFYqT3jUiFikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMcALW5ISAsajwh6qyIAGSQZEGBS8sqIYGvb5YguyTA9XAAvLYh4gAWTzGcSYKy4STbBRgE7iLpdfpgKLRDKxABM6NyEFQojqCnU0I6sIgAF8yVUFn4Wm81pttnoyuJ1tIACcKADWIAgAEkIEd1hMTmdiFcbncIGUKp5nuK3h8UF9fv8gSCwRCoRBHDC4QikSj0p4qNjcfiAJrbMDNRxksnzUn0UkAShEEikkHwSDASBU0XyqM86O0xsp0USECDAA5cv70Z4AMzaACcMb80XjyW0OVDwIgAm0AlTMSSaSoBaL0QoaWz-oEgfi2niFcjgaTWYrSc8gIb8ey9Gyrsk0ggoIsYEwKk93u06xM9ns0Rgnha2SdZAAfPM5Ip8NpRAoQF6QE5R4qTovl9ifFS-OC-lFgfNql1cMBgE1gOIFNsAMSAkCiPgoiAh4T7+NICjiFyH5fr+6IUEgFBJkgoE3u8SCiP8jj7mCmCoTedJYfhVIipcLwSj0fQgPaTr0C6QA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAFYqT3jUiFikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMcALW5ISAsajwh6qyIAGSQZEGBS8sqIYGvb5YguyTA9XAAvLYh4gAWTzGcSYKy4STbBRgE7iLpdfpgKLRDKxABM6NyEFQojqCnU0I6sIgAF8yVUFn4Wm81pttnoyuJ1tIACcKADWIAgAEkIEd1hMTmdiFcbncIGUKp5nuK3h8UF9fv8gSCwRCoRBHDC4QikSj0p4qNjcfiAJrbMDNRxksnzUn0UkAShEEikkHwSDASBU0XyqM86O0xsp0USECDAA5cv70Z4AMzaACcMb80XjyW0OVDwIgAm0AlTMSSaSoBaL0QoaWz-oEgfi2niFcjgaTWYrSc8gIb8ey9Gyrsk0ggoIsYEwKk93u06xM9ns0Rgnha2SdZAAfPM5Ip8NpRAoQF6QE5R4qTovl9ifFS-OC-lFgfNql1cMBgE1gOIFNsAMSAkCiPgoiAh4T7+NICjiFyH5fr+6IUEgFBJkgoE3u8SCiP8jj7mCmCoTedJYfhVIipcLwSj0fQgPaTr0C6QA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

#### Regression durchführen

Regressionshypothese: Exponentialfunktion

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAFYqT3jUiFikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMcALW5ISAsajwh6qyIAGSQZEGBS8sqIYGvb5YguyTA9XAAvLYh4gAWTzGcSYKy4STbBRgE7iLpdfpgKLRDKxABM6NyEFQojqCnU0I6sIgAF8yVUFn4Wm81pttnoyuJ1tIACcKADWIAgAEkIEd1hMTmdiFcbncIGUKp5nuK3h8UF9fv8gSCwRCoRBHDC4QikSj0p4qNjcfiAJrbMDNRxksnzUn0UkAShEEikkHwSDASBU0XyqM86O0xsp0USECDAA5cv70Z4AMzaACcMb80XjyW0OVDwIgAm0AlTMSSaSoBaL0QoaWz-oEgfi2niFcjgaTWYrSc8gIb8ey9Gyrsk0ggoIsYEwKk93u06xM9ns0Rgnha2SdZAAfPM5Ip8NpRAoQF6QE5R4qTovl9ifFS-OC-lFgfNql1cMBgE1gOIFNsAMSAkCiPgoiAh4T7+NICjiFyH5fr+6IUEgFBJkgoE3u8SCiP8jj7mCmCoTedJYfhVIipcLwSj0fQgPaTr0C69D0AA9IxEAAKIwKCKAgIquC3KAEAAEogHAB6YOCkgBCAB54lxKBiEOkCiWM-AQAeIkzOJKDaCAHGSNxYC4L09hTkgngrMY0nFJCKBRAIZL0W6w4+uQSnjNpACOgRetZqIDvJ7oQKIKiuWAHleQZkhhn5jmyCoACyXpmDpxj2KIDkKap6LBTMynaAo6IiMxgnCaJmmYBygQKGg3J-LgMncf5w5qaV1kIJV1UqNuSh7geR5OF0wSiBFKAiSYRDnvMA0oEN1n2DAa4rAeYCVSgOIQAAVBACXENpHGpRtiwunaV7zBBUEgDB35atIIC3DIwAVCcZ1cnghBEFEGarBsWHsZx+m8W+3JCepYnWY4jr0fQXW7vuh5gMejjwzAsKeKiBZdp9gxTTNkj2AtqngCtWoACQtCoNoANQ4toVoAGK4NM+D2BQa5UzaAA67OAeIkCUwENPiPTjPM6zWoAHowMTji0GS2L0AAkCsCpKveAItoF4ifldjg3XdD0gCcgT9NtRCqIU9wVHakPQz1cMI0jKMxGWdYQICGQK9jw1494BPLQoq2OKT5MQFTSAC0LIBMyzIdahAnPc5AIBi14fOiOHDORyLMcc1z+A84spJSzLpJy0rnzfKr8TqxIWvbLrwD3Y9nhGyAJtm0skoPPZtBAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAFYqT3jUiFikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMcALW5ISAsajwh6qyIAGSQZEGBS8sqIYGvb5YguyTA9XAAvLYh4gAWTzGcSYKy4STbBRgE7iLpdfpgKLRDKxABM6NyEFQojqCnU0I6sIgAF8yVUFn4Wm81pttnoyuJ1tIACcKADWIAgAEkIEd1hMTmdiFcbncIGUKp5nuK3h8UF9fv8gSCwRCoRBHDC4QikSj0p4qNjcfiAJrbMDNRxksnzUn0UkAShEEikkHwSDASBU0XyqM86O0xsp0USECDAA5cv70Z4AMzaACcMb80XjyW0OVDwIgAm0AlTMSSaSoBaL0QoaWz-oEgfi2niFcjgaTWYrSc8gIb8ey9Gyrsk0ggoIsYEwKk93u06xM9ns0Rgnha2SdZAAfPM5Ip8NpRAoQF6QE5R4qTovl9ifFS-OC-lFgfNql1cMBgE1gOIFNsAMSAkCiPgoiAh4T7+NICjiFyH5fr+6IUEgFBJkgoE3u8SCiP8jj7mCmCoTedJYfhVIipcLwSj0fQgPaTr0C69D0AA9IxEAAKIwKCKAgIquC3KAEAAEogHAB6YOCkgBCAB54lxKBiEOkCiWM-AQAeIkzOJKDaCAHGSNxYC4L09hTkgngrMY0nFJCKBRAIZL0W6w4+uQSnjNpACOgRetZqIDvJ7oQKIKiuWAHleQZkhhn5jmyCoACyXpmDpxj2KIDkKap6LBTMynaAo6IiMxgnCaJmmYBygQKGg3J-LgMncf5w5qaV1kIJV1UqNuSh7geR5OF0wSiBFKAiSYRDnvMA0oEN1n2DAa4rAeYCVSgOIQAAVBACXENpHGpRtiwunaV7zBBUEgDB35atIIC3DIwAVCcZ1cnghBEFEGarBsWHsZx+m8W+3JCepYnWY4jr0fQXW7vuh5gMejjwzAsKeKiBZdp9gxTTNkj2AtqngCtWoACQtCoNoANQ4toVoAGK4NM+D2BQa5UzaAA67OAeIkCUwENPiPTjPM6zWoAHowMTji0GS2L0AAkCsCpKveAItoF4ifldjg3XdD0gCcgT9NtRCqIU9wVHakPQz1cMI0jKMxGWdYQICGQK9jw1494BPLQoq2OKT5MQFTSAC0LIBMyzIdahAnPc5AIBi14fOiOHDORyLMcc1z+A84spJSzLpJy0rnzfKr8TqxIWvbLrwD3Y9nhGyAJtm0skoPPZtBAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

#### Physikalisierung

In der Physik wird eine Exponentialfunktion oft zur Basis $e$ dargestellt. Es gilt:

$$
  y = a \cdot b^x = a \cdot e^{ln ({b^x})} = a \cdot e^{ln ({b}) \cdot x}
$$

also 

$$
  y = 1,996331 \cdot 1,400189^x = 1,996331 \cdot e^{ln(1,400189) \cdot x} = 1,996331 \cdot e^{0,336607 \cdot x}
$$

- Auf der linken Seite soll die elektrische Stromstärke $I$ mit der Einheit $\text{mA}$ stehen, also muss das auch die resultierende Einheit der rechten Seite sein.

- Der zweite Faktor der rechten Seite beschreibt einen Anteil und muss daher ohne resultierende Einheit geschrieben werden. Die Einheit der Zeit $t$ wird mit dem Faktor $\tfrac{1}{\text{s}}$ neutralisiert.

- Der ungenaueste Messwert wird mit einer Stelle hinter dem Komma angegeben. Das Ergebnis wird mit 2 Stellen hinter dem Komma angegeben.

- Die Wachstumskonstante $0,336607$ ist ein Element der mathematischen Modellierung und wird mit deutlich mehr Stellen hinter dem Komma angegeben.

$$
  I(t) = 2,00 \, \text{mA} \cdot e^{0,336607 \cdot t \, \cdot \tfrac{1}{\text{s}}}
$$

---

## Regressionshypothesen

Bevor eine Regression durchgeführt werden kann, muss einer geeignete **Regressionsmethode** ausgewählt werden: 

- Dazu sollte immer zuerst ein **Schaubild** auf Basis der gegebenen Messwerte angefertigt werden.

- Anhand der **Form des Graphen** kann man oft die richtige Methode vermuten.

- Die möglicherweise geeignete Regressionsmethode kann oft **rechnerisch überprüft** werden. 

- Auf Basis eines modellierten Funktionsterms sollte der Graph der modellierten Funktion über die Messwerte gelegt werden, um zu prüfen, ob der Graph zu den Messwerten passt. Falls die Abweichungen zu groß sind, sollte die Regression mit einer anderen Methode wiederholt werden.

---

### Proportionalität

##### Messtabelle:

||||||||||
|-|-|-|-|-|-|-|-|-|
| x | 0 | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 
| y | 0 | 11 | 23 | 32 | 42 | 55 | 67 | 76 | 89 |

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPeJokqk8EqgBdd19-JBhcTCiwBUCQHP8ITCJxAHcEcWMATwUePiiAMyRgTHLcv3wQLsDgMABBGBAi737KiBgorwgUJABbECjHN09aqyIAGSQZEGBi0vKIYCOTxYgOyTA9XAAvDYh4gBZPY3FMK1xJJsFGAPBBxB0Or0wFFomkILEAEwI7IQVCiGoKdRAtogiAAX3xFTmfiatxW602TVBu2Ih2OpwgJTKniu9Nu9xQjxeb0+31+-0BEEcwNB4Mh4BhiIRniynjRGIAmpswI1HPj8bM8fQ8QBKEQSKSQfBIMBIFTRXKwmXZS2Jd7xG1+aLSiAIgDMjpibs8buRROiXwgHz9loArJ5Q6HPdEKJ4KAJowJPAIKNGAByeNMATky9Ey+sk0ggPwsYEwKmNpu0qxM9ns0RgniamR1ZAAfLM5Ip8NpRAoQCaQE4S5zQQ2myifMS-H9XlEvrNKh1cMBgA1gOIFJsAMQfECifCiD4eRf+aQKcQAaxA683O4RFCQFCzSBP07uSFEb0cfd+mDf07kt+AHEjSBzXAyXQ9CAmo6vQepAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPeJokqk8EqgBdd19-JBhcTCiwBUCQHP8ITCJxAHcEcWMATwUePiiAMyRgTHLcv3wQLsDgMABBGBAi737KiBgorwgUJABbECjHN09aqyIAGSQZEGBi0vKIYCOTxYgOyTA9XAAvDYh4gBZPY3FMK1xJJsFGAPBBxB0Or0wFFomkILEAEwI7IQVCiGoKdRAtogiAAX3xFTmfiatxW602TVBu2Ih2OpwgJTKniu9Nu9xQjxeb0+31+-0BEEcwNB4Mh4BhiIRniynjRGIAmpswI1HPj8bM8fQ8QBKEQSKSQfBIMBIFTRXKwmXZS2Jd7xG1+aLSiAIgDMjpibs8buRROiXwgHz9loArJ5Q6HPdEKJ4KAJowJPAIKNGAByeNMATky9Ey+sk0ggPwsYEwKmNpu0qxM9ns0RgniamR1ZAAfLM5Ip8NpRAoQCaQE4S5zQQ2myifMS-H9XlEvrNKh1cMBgA1gOIFJsAMQfECifCiD4eRf+aQKcQAaxA683O4RFCQFCzSBP07uSFEb0cfd+mDf07kt+AHEjSBzXAyXQ9CAmo6vQepAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Lineare Regression mit $y = a \cdot x + b$, wobei b in einer Proportionalität gleich 0 gesetzt wird.

##### Rechnerische Überprüfung der Hypothese

Für eine Proportionalität gilt, dass der **Quotient** der Werte eines Wertepaars in guter Näherung **konstant** ist. 

Aus $\:\:\: y = k \cdot x \:\:\:$ folgt $\:\:\: k = \frac{y}{x} = const$. 

Überprüfung anhand der Messtabelle:

||||||||||
|-|-|-|-|-|-|-|-|-|
| x | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 
| y | 11 | 23 | 32 | 42 | 55 | 67 | 76 | 89 |
| $k = \frac{y}{x}$ | 11 |11,5|10,7|10,5| 11 |11,2|10,9|11,1|

Der Wert von $k$ schwankt um $11$ und ist in guter Näherung konstant. 

Eine lineare Regression ist eine geeignete Regressionsmethode mit $y = a \cdot x + b$. 

Da die Zielfunktion eine Proportionalität sein soll, gehört der Ursprung $O(0/0)$ mit zu den Wertepaaren, die für die Regression berücksichtigt werden. 

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPeJokqk8EqgBdd19-JBhcTCiwBUCQHP8ITCJxAHcEcWMATwUePiiAMyRgTHLcv3wQLsDgMABBGBAi737KiBgorwgUJABbECjHN09aqyIAGSQZEGBi0vKIYCOTxYgOyTA9XAAvDYh4gBZPY3FMK1xJJsFGAPBBxB0Or0wFFomkILEAEwI7IQVCiGoKdRAtogiAAX3xFTmfiatxW602TVBu2Ih2OpwgJTKniu9Nu9xQjxeb0+31+-0BEEcwNB4Mh4BhiIRniynjRGIAmpswI1HPj8bM8fQ8QBKEQSKSQfBIMBIFTRXKwmUoiCWxLveLZS3SiAIgDMTr80TdnjdyKJ0S+EA+-stAFZPGGw56YhRPBQBDHogJPAIKEmAByeDMATky9Ey+sk0ggPwsYEwKmNpu0qxM9ns0RgniamR1ZAAfLM5Ip8NpRAoQCaQE4y5zQU2WyifMS-H9XlEvrNKh1cMBgA1gOIFJsAMQfECifCiD4eZf+aQKcQAaxAm+3e4RFCQFBzSDPs7uSFEb0cA9+mAfrO5K-kBxI0gc1wMl0PQgJqOr0Hq9D0AA9ChED7BYQ6DhAABKIBwIOmB-JIAQgIO6IoCAKBiMWkAdME15gAChrkasKiDoRUwkSg2jAFhij2NWSCeEsxgUYULFRGG+JIQaJbSNwcDBHAKgMSgTEsYpCirNoIAAI6BCaLGwoWtGGhATTfkQvQrDImCUVY-B3IxzF0WxemGcZkjRI6IhoXhBFETxmBwORSCDBAry4JR1HmSWnHBSxmFUSoPZKP2g7Dk46miG5KCESYRATrMuX5fYMDtksg5gIECgoFUYBKSpEAAFTzBAADUlnWbZRwOUQlhgGAtAatOsyXjed7iFuO5CopJwyMAZRgY1V63nghBEFELogZs+FccRWlhUYgyONqSH0OlfYDkOTVOE1MAgp4vnZkGAAGTQqAAJF4ik8Cp2gqgAYrgkz4PYYY6gSMBdRA9i-VZ6J9fZjnDUD4ig+DkPQzq73jSuDxPAu7xBhIs2bAtwBLStF20EAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPeJokqk8EqgBdd19-JBhcTCiwBUCQHP8ITCJxAHcEcWMATwUePiiAMyRgTHLcv3wQLsDgMABBGBAi737KiBgorwgUJABbECjHN09aqyIAGSQZEGBi0vKIYCOTxYgOyTA9XAAvDYh4gBZPY3FMK1xJJsFGAPBBxB0Or0wFFomkILEAEwI7IQVCiGoKdRAtogiAAX3xFTmfiatxW602TVBu2Ih2OpwgJTKniu9Nu9xQjxeb0+31+-0BEEcwNB4Mh4BhiIRniynjRGIAmpswI1HPj8bM8fQ8QBKEQSKSQfBIMBIFTRXKwmUoiCWxLveLZS3SiAIgDMTr80TdnjdyKJ0S+EA+-stAFZPGGw56YhRPBQBDHogJPAIKEmAByeDMATky9Ey+sk0ggPwsYEwKmNpu0qxM9ns0RgniamR1ZAAfLM5Ip8NpRAoQCaQE4y5zQU2WyifMS-H9XlEvrNKh1cMBgA1gOIFJsAMQfECifCiD4eZf+aQKcQAaxAm+3e4RFCQFBzSDPs7uSFEb0cA9+mAfrO5K-kBxI0gc1wMl0PQgJqOr0Hq9D0AA9ChED7BYQ6DhAABKIBwIOmB-JIAQgIO6IoCAKBiMWkAdME15gAChrkasKiDoRUwkSg2jAFhij2NWSCeEsxgUYULFRGG+JIQaJbSNwcDBHAKgMSgTEsYpCirNoIAAI6BCaLGwoWtGGhATTfkQvQrDImCUVY-B3IxzF0WxemGcZkjRI6IhoXhBFETxmBwORSCDBAry4JR1HmSWnHBSxmFUSoPZKP2g7Dk46miG5KCESYRATrMuX5fYMDtksg5gIECgoFUYBKSpEAAFTzBAADUlnWbZRwOUQlhgGAtAatOsyXjed7iFuO5CopJwyMAZRgY1V63nghBEFELogZs+FccRWlhUYgyONqSH0OlfYDkOTVOE1MAgp4vnZkGAAGTQqAAJF4ik8Cp2gqgAYrgkz4PYYY6gSMBdRA9i-VZ6J9fZjnDUD4ig+DkPQzq73jSuDxPAu7xBhIs2bAtwBLStF20EAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Der y-Achsenabschnitt wird weggelassen, damit die Zielfunktion eine Proportionalität ist. Also werden die Messwerte in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
y = 11,03 \cdot x
$$

---

### Lineare Funktion

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x | 0   | 0,5 | 1   | 1,5 | 2   | 2,5 | 3,0 | 3,5 | 4,0 |
| y |-1,54|-1,22|-0,91|-0,62|-0,38|-0,19| 0,11| 0,40| 0,72|

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARk9kiFiAJgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotEqJ5srlPKhRPUFOpQZ1wRAAL746qLPytB7rLY7VoQg7EE5nC4QcqVTy3ekPJ4oF7vT4-P4AoEgiCOMEQqEw8Dw5GeKh5CBojEATR2YBajnx+IWePoeIAlCIJFJIPgkGAkCpogUEUiUklvnlLQkMrEbVkUZa0pkEgBOFL2vzRG1OhIUN3+rJIhIAZgAHH6YlkkhHtCkvXHopHpcnfUT04mIAlvjKc7989oBLl6Dl9ZJpBB-hYwJgVMbTdoNiZ7PZojBPK0cjqyAA+BZyRT4bSiBQgE0gJz1zkQ7u92U+Yl+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8O-80gU4gA1iAjyfz1kKEgKF6kPea6PEgoifI4k4ApggFruSYHQcSNLHHcDK9P0ICajq9B6kAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARk9kiFiAJgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotEqJ5srlPKhRPUFOpQZ1wRAAL746qLPytB7rLY7VoQg7EE5nC4QcqVTy3ekPJ4oF7vT4-P4AoEgiCOMEQqEw8Dw5GeKh5CBojEATR2YBajnx+IWePoeIAlCIJFJIPgkGAkCpogUEUiUklvnlLQkMrEbVkUZa0pkEgBOFL2vzRG1OhIUN3+rJIhIAZgAHH6YlkkhHtCkvXHopHpcnfUT04mIAlvjKc7989oBLl6Dl9ZJpBB-hYwJgVMbTdoNiZ7PZojBPK0cjqyAA+BZyRT4bSiBQgE0gJz1zkQ7u92U+Yl+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8O-80gU4gA1iAjyfz1kKEgKF6kPea6PEgoifI4k4ApggFruSYHQcSNLHHcDK9P0ICajq9B6kAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Lineare Regression mit $y = a \cdot x + b$

##### Rechnerische Überprüfung der Hypothese

Für eine lineare Funktion gilt, dass der **Quotient** aus der Differenz zweier y-Werte und der Differenz zweier x-Werte in guter Näherung **konstant** ist:

$\:\:\: y = k \cdot x + b \:\:\:$ mit $\:\:\: k = \frac{\Delta y}{\Delta x} = \frac{y_2 - y_1}{x_2 - x_1}$.

Überprüfung anhand von Werten aus der Messtabelle:

$$
\begin{align}
&k_1 = \frac{y_2 - y_1}{x_2 - x_1} = \frac{-1,22 - (-1,54)}{0,5 - 0} = 0,64 \\
&k_2 = \frac{-0,62 - (-1,22)}{1,5 - 0,5} = 0,6 \\
&k_3 = \frac{0,11 - (-0,91)}{3 - 1} = 0,51 \\
&k_4 = \frac{0,40 - (-1,22)}{3,5 - 0,5} = 0,54 \\
&k_4 = \frac{0,72 - (-0,19)}{4 - 2,5} = 0,61
\end{align}
$$

Der Wert von $k$ schwankt um $0,55$ und ist in guter Näherung konstant. 

Eine lineare Regression ist eine geeignete Regressionsmethode mit $y = a \cdot x + b$. 

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARk9kiFiAJgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotEqJ5srlPKhRPUFOpQZ1wRAAL746qLPytB7rLY7VoQg7EE5nC4QcqVTy3ekPJ4oF7vT4-P4AoEgiCOMEQqEw8Dw5GeKh5CBojEATR2YBajnx+IWePoeIAlCIJFJIPgkGAkCpogUEUiUklvnlLQkMrEbVkUZa0pkEgBOFL2vzRG1OhIUN3+rJIhIAZgAHH6YlkkhHtCkvXHopHpcnfUT04mIAlvjKc7989oBLl6Dl9ZJpBB-hYwJgVMbTdoNiZ7PZojBPK0cjqyAA+BZyRT4bSiBQgE0gJz1zkQ7u92U+Yl+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8O-80gU4gA1iAjyfz1kKEgKF6kPea6PEgoifI4k4ApggFruSYHQcSNLHHcDK9P0ICajq9B6vQ9AAPS4RARwWNOU4QAASiAcBTpggKSAEIBTuiKAgCgYg1pA3TBC+YDAoaDEbCoU5UbMtEoNowDEYo9gtkgnirMYjElLxUSJPi2EGrW0jcHAwRwConEoNxvFaQoGzaCAACOgQmrxCJVmxhoQK0IFEAM6wyJgTFWPwjxcTx7H8eZVk2ZIAb2XhBEUcJNHGXADFICMEAfLgTEsQ5tZCdRolEcxKijkoE5TjOTgGaI-koFRJhEIuCyleV9gwAOqxTmAgQKCgtRgNpukQAAVEsEAANROS5bmnJ5RCWGAYC0BqK4LE+r7vuIx6nkKWnnDIwCVPBnXPm+eCEEQUThmsmxgVFWWxfFIyONq2H0Pl46TtOXVOF1MDgp4CLaBmpbRp4AAGrQqAAJF4Wk8Lp2gqgAYrgMz4PYiQ6gSMBDRA9jg856JjR5XnTTD4jw4jyOozqgPzbuzyvJuXwlhIq07BtwBbTt920EAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARk9kiFiAJgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotEqJ5srlPKhRPUFOpQZ1wRAAL746qLPytB7rLY7VoQg7EE5nC4QcqVTy3ekPJ4oF7vT4-P4AoEgiCOMEQqEw8Dw5GeKh5CBojEATR2YBajnx+IWePoeIAlCIJFJIPgkGAkCpogUEUiUklvnlLQkMrEbVkUZa0pkEgBOFL2vzRG1OhIUN3+rJIhIAZgAHH6YlkkhHtCkvXHopHpcnfUT04mIAlvjKc7989oBLl6Dl9ZJpBB-hYwJgVMbTdoNiZ7PZojBPK0cjqyAA+BZyRT4bSiBQgE0gJz1zkQ7u92U+Yl+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8O-80gU4gA1iAjyfz1kKEgKF6kPea6PEgoifI4k4ApggFruSYHQcSNLHHcDK9P0ICajq9B6vQ9AAPS4RARwWNOU4QAASiAcBTpggKSAEIBTuiKAgCgYg1pA3TBC+YDAoaDEbCoU5UbMtEoNowDEYo9gtkgnirMYjElLxUSJPi2EGrW0jcHAwRwConEoNxvFaQoGzaCAACOgQmrxCJVmxhoQK0IFEAM6wyJgTFWPwjxcTx7H8eZVk2ZIAb2XhBEUcJNHGXADFICMEAfLgTEsQ5tZCdRolEcxKijkoE5TjOTgGaI-koFRJhEIuCyleV9gwAOqxTmAgQKCgtRgNpukQAAVEsEAANROS5bmnJ5RCWGAYC0BqK4LE+r7vuIx6nkKWnnDIwCVPBnXPm+eCEEQUThmsmxgVFWWxfFIyONq2H0Pl46TtOXVOF1MDgp4CLaBmpbRp4AAGrQqAAJF4Wk8Lp2gqgAYrgMz4PYiQ6gSMBDRA9jg856JjR5XnTTD4jw4jyOozqgPzbuzyvJuXwlhIq07BtwBbTt920EAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
  y = 0,54567 \cdot x - 1,49467
$$

---

### Antiproportionalität

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 
| y | 9,8 | 4,8 | 3,2 | 2,5 | 2,0 | 1,6 | 1,4 | 1,3 | 1,1 |

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDSAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDSAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Antiproportionalität mit einer Potenzfunktion $y = a \cdot \frac{1}{x}$

##### Rechnerische Überprüfung der Hypothese

Für eine Antiproportionalität gilt, dass das **Produkt** der Werte eines Wertepaars in guter Näherung **konstant** ist: 

$\:\:\: y = k \cdot \frac{1}{x} \:\:\:$ also $\:\:\: k = y \cdot x$.

Überprüfung anhand der Messtabelle:

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x               | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 
| y               | 9,8 | 4,8 | 3,2 | 2,5 | 2,0 | 1,6 | 1,4 | 1,3 | 1,1 |
| $k = y \cdot x$ | 9,8 | 9,6 | 9,6 | 10,0| 10,0| 9,6 | 9,8 | 10,4| 9,9 | 

Der Wert von $k$ schwankt um $9,8$ und ist in guter Näherung konstant. Wegen 

$$
  y = k \cdot \frac{1}{x} = k \cdot x^{-1}
$$

kann eine Antiproportionalität als Potenzfunktion mit dem Exponenten $-1$ aufgefasst werden.

Eine Potenzregression ist eine geeignete Regressionsmethode mit $\:\:\: y = a \cdot x^b$.

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDXoegAHo0IgAAFcQwBAFA3liAAlEA4GHTBAUkCB7FaFRLQAKiWAA9GQkONMt-jwgiVGHMjZkolBtH+BoQAUexayQTxVmMYdRBKYEUCiCgiRQ9jIEtchOPwt5tBAABHQJzQUhFizEUtZBULSCN0gyjMkW1TPoPslEHYdRycbpglEMAFLIkwiCnBZPJQbyFPsGBO1WYcwECBQUAxCBGIAWXNMxhPCzxWNoEkFgSGNHUSIspIWa87wfcQdz3UVpBAc4ZGASoINqcoyrwQgiCiZE9RQpy7AHIcRzwpw8JgcFPGiRMvgSd17E7UguwgAADWjyAAEi8JBtHVAAxXAZnwexEn1YkAHbmK8daZC28Rdv2w7jsJRbZyC55XiXL5EwWCRKp2Gq6oakBHG62ggA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDXoegAHo0IgAAFcQwBAFA3liAAlEA4GHTBAUkCB7FaFRLQAKiWAA9GQkONMt-jwgiVGHMjZkolBtH+BoQAUexayQTxVmMYdRBKYEUCiCgiRQ9jIEtchOPwt5tBAABHQJzQUhFizEUtZBULSCN0gyjMkW1TPoPslEHYdRycbpglEMAFLIkwiCnBZPJQbyFPsGBO1WYcwECBQUAxCBGIAWXNMxhPCzxWNoEkFgSGNHUSIspIWa87wfcQdz3UVpBAc4ZGASoINqcoyrwQgiCiZE9RQpy7AHIcRzwpw8JgcFPGiRMvgSd17E7UguwgAADWjyAAEi8JBtHVAAxXAZnwexEn1YkAHbmK8daZC28Rdv2w7jsJRbZyC55XiXL5EwWCRKp2Gq6oakBHG62ggA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
y = 9,63801 \cdot x^{-0,98452}
$$

Da eine Antiproportionalität modelliert werden soll, setzt man den Exponenten gleich $-1$. Also gilt in guter Näherung:

$$
y = 9,64 \cdot x^{-1} = 9,64 \cdot \frac{1}{x}
$$

---

### Potenzfunktion

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x |100 |180 |205 |255 |290 |510 |580 |820 |910 | 
| y | 86 | 65 | 60 | 54 | 50 | 38 | 36 | 30 | 29 |

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDSAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDSAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Potenzfunktion mit $y = a \cdot x^b$

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDXoegAHo0IgAAFcQwBAFA3liAAlEA4GHTBAUkCB7FaFRLQAKiWAA9GQkONMt-jwgiVGHMjZkolBtH+BoQAUexayQTxVmMYdRBKYEUCiCgiRQ9jIEtchOPwt5tBAABHQJzQUhFizEUtZBULSCN0gyjMkW1TPoPslEHYdRycbpglEMAFLIkwiCnBZPJQbyFPsGBO1WYcwECBQUAxCBGIAWXNMxhPCzxWNoEkFgSGNHUSIspIWa87wfcQdz3UVpBAc4ZGASoINqcoyrwQgiCiZE9RQpy7AHIcRzwpw8JgcFPGiRMvgSd17E7UguwgAADWjyAAEi8JBtHVAAxXAZnwexEn1YkAHbmK8daZC28Rdv2w7jsJRbZyC55XiXL5EwWCRKp2Gq6oakBHG62ggA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaKm0AVk8ARhTUqk9YlIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYgUgBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFaLpCAATm0AA48ja5RBvs7XX5ogBmTy+7Ro0nRX4QZFJb0xZLh7QKkMUVLaChR6ICJPfVNOpO+1P2pO5eg5I2SaQQf4WMCYFRmi3aDYmez2aIwTytHL6sgAPgWckU+G0ogUIHNICcFZ5EJbbfRPjJfkBHyivwWNW6uGAwGawHECh2AGJviBRPhRN8PKv-NIFOIANYgbe7g-IihICj2pAX+ePJCiT6OIcAUwL95ypf8QLJeljjuZlen6EAdX1ehDXoegAHo0IgAAFcQwBAFA3liAAlEA4GHTBAUkCB7FaFRLQAKiWAA9GQkONMt-jwgiVGHMjZkolBtH+BoQAUexayQTxVmMYdRBKYEUCiCgiRQ9jIEtchOPwt5tBAABHQJzQUhFizEUtZBULSCN0gyjMkW1TPoPslEHYdRycbpglEMAFLIkwiCnBZPJQbyFPsGBO1WYcwECBQUAxCBGIAWXNMxhPCzxWNoEkFgSGNHUSIspIWa87wfcQdz3UVpBAc4ZGASoINqcoyrwQgiCiZE9RQpy7AHIcRzwpw8JgcFPGiRMvgSd17E7UguwgAADWjyAAEi8JBtHVAAxXAZnwexEn1YkAHbmK8daZC28Rdv2w7jsJRbZyC55XiXL5EwWCRKp2Gq6oakBHG62ggA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
y = 849,38 \cdot x^{-0,5}
$$

$x^{-0,5}$ kann geschrieben werden als $\frac{1}{\sqrt{x}}$ also folgt:

$$
y = 849,38 \cdot \frac{1}{\sqrt{x}}
$$

Neben diesem Beispiel können Potenzfunktionen auch z.B. Parabeln oder Wurzelfunktionen sein.

---

### Parabelfunktion

Die **Parabelfunktion** ist eine Variation der Potenzfunktion.

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x |10 |15 |20 |25 |30  |35  |40  |45  |50  | 
| y |135|305|538|840|1219|1651|2163|2735|3378|

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqTwBmAFYaT2pPWOSaAF13X38kGFxMKLAFQJBC-whMInEAdwRxYwBPBR4+KIAzJGBMGqK-fBB+wOAwAEEYEHLvEbqIGCivCBQkAFsQKMc3TyarIgAZJBkQYAqqmohgc8u1iF7JMD1cAC9diHiAFk9jOJMFZcJI9gowB4IOJer0hmAotEkhBYgAmVEFCCoUSNBTqcHdSEQAC+JNqyz87Semx2e3aUKOxDOFyuEEq1U89xZTxeKDen2+fwBQJBYIgjghUJhcPAiLRqM8VEx2NxAE09mA2o4SSSlsT6MSAJQiCRSSD4JBgJAqaJFaKJTzxNIFO3xVIpKipF1+aKo5GpZIADm9MVR7oggd+SvJ0VyjtR8QAnCHY+H4hRUvEU1HPAmKMls+HUQJnTH0ilkgJg-Q8ibJNIIICLGBMCoLVbtFsTPZ7NEYJ52nlDWQAHxLOSKfDaUQKECWkBOJt8qF9geYnwUvzAr5Rf5LOq9XDAYCtYDiBR7ADEvxAonwol+Hn3-mkCnEAGsQKfz1fURQkBQiZIE+m7PEgojfI4M5ApgIGbjSkFwRSjKnA8rL9IMIB6oa9DGkAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqTwBmAFYaT2pPWOSaAF13X38kGFxMKLAFQJBC-whMInEAdwRxYwBPBR4+KIAzJGBMGqK-fBB+wOAwAEEYEHLvEbqIGCivCBQkAFsQKMc3TyarIgAZJBkQYAqqmohgc8u1iF7JMD1cAC9diHiAFk9jOJMFZcJI9gowB4IOJer0hmAotEkhBYgAmVEFCCoUSNBTqcHdSEQAC+JNqyz87Semx2e3aUKOxDOFyuEEq1U89xZTxeKDen2+fwBQJBYIgjghUJhcPAiLRqM8VEx2NxAE09mA2o4SSSlsT6MSAJQiCRSSD4JBgJAqaJFaKJTzxNIFO3xVIpKipF1+aKo5GpZIADm9MVR7oggd+SvJ0VyjtR8QAnCHY+H4hRUvEU1HPAmKMls+HUQJnTH0ilkgJg-Q8ibJNIIICLGBMCoLVbtFsTPZ7NEYJ52nlDWQAHxLOSKfDaUQKECWkBOJt8qF9geYnwUvzAr5Rf5LOq9XDAYCtYDiBR7ADEvxAonwol+Hn3-mkCnEAGsQKfz1fURQkBQiZIE+m7PEgojfI4M5ApgIGbjSkFwRSjKnA8rL9IMIB6oa9DGkAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Potenzfunktion mit $y = a \cdot x^b$

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oBIOQCuKPgWcK4AXBAA2gC0AIxUngDMAKw0ntSeMUk0ALru9BBFEEgwuJiRYAoBIAXFEJhE4gDuCOLGAJ4KPHyRAGZIwJi1hcX4IAMBwGAAgjAgFd6j9UUwkV4QKEgAtiCRjm6ezVZEADJIMiDAldW1EMAXV+sQfZJgergAXnsQcQAsnmM4kwVlwkn2CjAHgg4j6fWGYEiUUSEBiACY0fkSihRE0FOoIT0oRAAL6kuorIodZ5bXb7DrQ47Ec6Xa4QKo1TwPVnPV4od5fH7-QHA0HgiCOSHQ2Hw8BI9FozxULGoXHiBQATX2YHajlJpOWBpJAEoRBIpJB8EgwEgVFFRlEEp44ql8g64ilklQUm6ilE0SiUkkABy+6Joz0QYN-ZUUqI5Z1ouIATjD8cjcQoKTiaZjniTFCSucjaIErrjaWSSQEofouTNkmkECBFjAmBUVpt2m2Jns9iiME8HVyxrIAD5DXJFPhtKIFCBrSAnC3+dCB0OsT5KUUQd9IgDDfU+rhgMA2sB1fsAMR-ECifCiP4eQ-FaQKcQAaxA58vEqvaIoJAKGTJBn23F4kFEH5HDnYFMDA7daWghDKSZM5HjZAYhhAQ0TXoU16HoAB6IiIAABXEMAQBQT4YgAJRAOB50wEFJAgewOhUW0ACoIBgAA9GRjTERtICBKiaJUecmIWViUG0IFmhABR7E7JBPA2Yx51EcowRQSIKFJAjzSbW1yHE6jPm0EAAEcAmtPTkXrESLQgGQVAsmjrLshzJEdZz6CnJRZ3nRcnD6IJRDAPSmJMIg10NCKcWiyR7BgUcNnnMAAgUFASggXiAFlrTMRS0s8ITaHJQ0UWoOsNMNN9P2-cQLwUfZpBAK4ZGAGoUIaKpmrwQgiEiNF6BNEQgpnOcFyopwqJgKFPCiSMcnSdjR1IMcIAAA048gABIvCQbQdQAMVweZ8HsFJjTJAB2vj+K8Y6ZDO8RLuu277pJXbN0St4Pj3X4KApIoJDajqqO63qQEcCbTSAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oBIOQCuKPgWcK4AXBAA2gC0AIxUngDMAKw0ntSeMUk0ALru9BBFEEgwuJiRYAoBIAXFEJhE4gDuCOLGAJ4KPHyRAGZIwJi1hcX4IAMBwGAAgjAgFd6j9UUwkV4QKEgAtiCRjm6ezVZEADJIMiDAldW1EMAXV+sQfZJgergAXnsQcQAsnmM4kwVlwkn2CjAHgg4j6fWGYEiUUSEBiACY0fkSihRE0FOoIT0oRAAL6kuorIodZ5bXb7DrQ47Ec6Xa4QKo1TwPVnPV4od5fH7-QHA0HgiCOSHQ2Hw8BI9FozxULGoXHiBQATX2YHajlJpOWBpJAEoRBIpJB8EgwEgVFFRlEEp44ql8g64ilklQUm6ilE0SiUkkABy+6Joz0QYN-ZUUqI5Z1ouIATjD8cjcQoKTiaZjniTFCSucjaIErrjaWSSQEofouTNkmkECBFjAmBUVpt2m2Jns9iiME8HVyxrIAD5DXJFPhtKIFCBrSAnC3+dCB0OsT5KUUQd9IgDDfU+rhgMA2sB1fsAMR-ECifCiP4eQ-FaQKcQAaxA58vEqvaIoJAKGTJBn23F4kFEH5HDnYFMDA7daWghDKSZM5HjZAYhhAQ0TXoU16HoAB6IiIAABXEMAQBQT4YgAJRAOB50wEFJAgewOhUW0ACoIBgAA9GRjTERtICBKiaJUecmIWViUG0IFmhABR7E7JBPA2Yx51EcowRQSIKFJAjzSbW1yHE6jPm0EAAEcAmtPTkXrESLQgGQVAsmjrLshzJEdZz6CnJRZ3nRcnD6IJRDAPSmJMIg10NCKcWiyR7BgUcNnnMAAgUFASggXiAFlrTMRS0s8ITaHJQ0UWoOsNMNN9P2-cQLwUfZpBAK4ZGAGoUIaKpmrwQgiEiNF6BNEQgpnOcFyopwqJgKFPCiSMcnSdjR1IMcIAAA048gABIvCQbQdQAMVweZ8HsFJjTJAB2vj+K8Y6ZDO8RLuu277pJXbN0St4Pj3X4KApIoJDajqqO63qQEcCbTSAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
y = 1,35 \cdot x^2
$$

---

### Wurzelfunktion

Die **Wurzelfunktion** ist eine Variation der Potenzfunktion.

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x |100|180|205|255|290|510|580|820|910 | 
| y |345|463|491|550|588|780|830|985|1040|

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYaT3jEqmSaNIgEmgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMrEAExIvIQVCieoKdSgzrgiAAX0J1UWflaD3WWx2rQhB2IJzOFwg5UqnlujIeTxQL3enx+fwBQJBEEcYIhUJh4HhyKRnioaIxWIAmjswC1HITCQsCfQCQBKEQSKSQfBIMBIFTRArRVKeADM3wArHlrfEAByZb4UO0uvzRJFUR2eb4ATnivpiSMdQYg0flJP9Icyjrdboj0UdiU8Ag96ZTmTddvj1rdAc8IbdzoTYcyiW+8voOUNkmkEH+FjAmBUpvN2g2Jns9miME8rRyerIAD4FnJFPhtKIFCAzSAnO3uRDh6O0T5SX5AR8or8FjVurhgMBmsBxAodgBib4gUT4UTfDwn-zSBTiADWICvN73kiFBIBQIZIO+e6PEgoifI4i4ApgkF7pScHIaSdLHHcTK9P0IDanq9AGkAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYaT3jEqmSaNIgEmgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMrEAExIvIQVCieoKdSgzrgiAAX0J1UWflaD3WWx2rQhB2IJzOFwg5UqnlujIeTxQL3enx+fwBQJBEEcYIhUJh4HhyKRnioaIxWIAmjswC1HITCQsCfQCQBKEQSKSQfBIMBIFTRArRVKeADM3wArHlrfEAByZb4UO0uvzRJFUR2eb4ATnivpiSMdQYg0flJP9Icyjrdboj0UdiU8Ag96ZTmTddvj1rdAc8IbdzoTYcyiW+8voOUNkmkEH+FjAmBUpvN2g2Jns9miME8rRyerIAD4FnJFPhtKIFCAzSAnO3uRDh6O0T5SX5AR8or8FjVurhgMBmsBxAodgBib4gUT4UTfDwn-zSBTiADWICvN73kiFBIBQIZIO+e6PEgoifI4i4ApgkF7pScHIaSdLHHcTK9P0IDanq9AGkAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Potenzfunktion mit $y = a \cdot x^b$

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYaT3jEqmSaNIgEmgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMrEAExIvIQVCieoKdSgzrgiAAX0J1UWflaD3WWx2rQhB2IJzOFwg5UqnlujIeTxQL3enx+fwBQJBEEcYIhUJh4HhyKRnioaIxWIAmjswC1HITCQsCfQCQBKEQSKSQfBIMBIFTRArRVKeADM3wArHlrfEAByZb4UO0uvzRJFUR2eb4ATnivpiSMdQYg0flJP9Icyjrdboj0UdiU8Ag96ZTmTddvj1rdAc8IbdzoTYcyiW+8voOUNkmkEH+FjAmBUpvN2g2Jns9miME8rRyerIAD4FnJFPhtKIFCAzSAnO3uRDh6O0T5SX5AR8or8FjVurhgMBmsBxAodgBib4gUT4UTfDwn-zSBTiADWICvN73kiFBIBQIZIO+e6PEgoifI4i4ApgkF7pScHIaSdLHHcTK9P0IDanq9AGvQ9AAPSkRAAAK4hgCAKBvLEABKIBwEumCApIED2K0KgWgAVEsAB6MiEUarb-LR9EqEurGzBxKDaP8DQgAo9g9kgnirMYS6iCUwIoFEFCEsRYmQBa5ASXRbzaCAACOgRmvpCJNmILayColn0TZ9mOZINoufQs5KAuS4rk43TBKIYD6axJhEJuCwRSgUX6fYMATqsS5gIECgoOiEACQAsmaZhKWlngibQxILLWGSNppCxfr+-7iNet4itIIDnDIwCVOhtTlM1eCEEQURIrqxGBXY86LsutFOLRMDgp4Ga1UkXETqQk4QAABjx5AACReEg2hqgAYrgMz4PYjp6kSADtQleEdMineIF1XTdd0EjtO6Jc8ryHl8FAkn4EhtTsnXdb1ICOBNtBAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYaT3jEqmSaNIgEmgBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMrEAExIvIQVCieoKdSgzrgiAAX0J1UWflaD3WWx2rQhB2IJzOFwg5UqnlujIeTxQL3enx+fwBQJBEEcYIhUJh4HhyKRnioaIxWIAmjswC1HITCQsCfQCQBKEQSKSQfBIMBIFTRArRVKeADM3wArHlrfEAByZb4UO0uvzRJFUR2eb4ATnivpiSMdQYg0flJP9Icyjrdboj0UdiU8Ag96ZTmTddvj1rdAc8IbdzoTYcyiW+8voOUNkmkEH+FjAmBUpvN2g2Jns9miME8rRyerIAD4FnJFPhtKIFCAzSAnO3uRDh6O0T5SX5AR8or8FjVurhgMBmsBxAodgBib4gUT4UTfDwn-zSBTiADWICvN73kiFBIBQIZIO+e6PEgoifI4i4ApgkF7pScHIaSdLHHcTK9P0IDanq9AGvQ9AAPSkRAAAK4hgCAKBvLEABKIBwEumCApIED2K0KgWgAVEsAB6MiEUarb-LR9EqEurGzBxKDaP8DQgAo9g9kgnirMYS6iCUwIoFEFCEsRYmQBa5ASXRbzaCAACOgRmvpCJNmILayColn0TZ9mOZINoufQs5KAuS4rk43TBKIYD6axJhEJuCwRSgUX6fYMATqsS5gIECgoOiEACQAsmaZhKWlngibQxILLWGSNppCxfr+-7iNet4itIIDnDIwCVOhtTlM1eCEEQURIrqxGBXY86LsutFOLRMDgp4Ga1UkXETqQk4QAABjx5AACReEg2hqgAYrgMz4PYjp6kSADtQleEdMineIF1XTdd0EjtO6Jc8ryHl8FAkn4EhtTsnXdb1ICOBNtBAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
y = 34,47 \cdot x^{0,5}
$$

$x^{0,5}$ kann geschrieben werden als $\sqrt{x}$ also folgt:

$$
y = 34,47 \cdot \sqrt{x}
$$

---

### Exponentielle Abnahme

Ein erstes Erkennungsmerkmal für eine exponentielle Abnahme ist, dass der Graph einen Schnittpunkt mit der y-Achse (**Anfangsbestand**) besitzt.

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 
| y | 19,6| 9,8 | 4,9 | 2,4 | 1,3 | 0,6 | 0,3 | 0,16| 0,07| 0,04|

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPACYkz3iqT1ikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMc3T3qrIgAZJBkQYFLyyohgE7PliC7JMD1cAC8tiHiAFk9jcUwrLhJNsFGAPBBxF0uv0wFFohkIFkcp5UKI6gp1CCOmCIABfPFVBZ+Fr3NabbYtcH7YjHU7nCBlCqeG50+6PFDPN4fb6-f6A4EQRyg8GQ6HgOFIzxUXIQVHogCa2zAzUceLx81x9FxAEoRBIpJB8EgwEgVNF8vC0gBObQUXIWxIQG0ADntfmiqQgX20VrdMQAzMltF8-dEfp9tP7QwBWKW20MUONRwnRARx+J2lPOuNUATZejZPWSaQQP4WMCYFRGk3adYmez2aIwTwtbLasgAPnmckU+G0ogUIGNICcZY54KbLZlPiJfgB7yiP3m1S6uGAwCawHECm2AGIviBRPhRF8PMv-NIFOIANYgTfbvdJChIChWpBn2cPJCiD6OAf-TAP1nMlfyAolqSOW56R6PoQA1bV6F1IA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPACYkz3iqT1ikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMc3T3qrIgAZJBkQYFLyyohgE7PliC7JMD1cAC8tiHiAFk9jcUwrLhJNsFGAPBBxF0uv0wFFohkIFkcp5UKI6gp1CCOmCIABfPFVBZ+Fr3NabbYtcH7YjHU7nCBlCqeG50+6PFDPN4fb6-f6A4EQRyg8GQ6HgOFIzxUXIQVHogCa2zAzUceLx81x9FxAEoRBIpJB8EgwEgVNF8vC0gBObQUXIWxIQG0ADntfmiqQgX20VrdMQAzMltF8-dEfp9tP7QwBWKW20MUONRwnRARx+J2lPOuNUATZejZPWSaQQP4WMCYFRGk3adYmez2aIwTwtbLasgAPnmckU+G0ogUIGNICcZY54KbLZlPiJfgB7yiP3m1S6uGAwCawHECm2AGIviBRPhRF8PMv-NIFOIANYgTfbvdJChIChWpBn2cPJCiD6OAf-TAP1nMlfyAolqSOW56R6PoQA1bV6F1IA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Exponentialfunktion mit $y = a \cdot b^x$ oder $y = a \cdot e^{ln(b) \cdot x}$

##### Rechnerische Überprüfung

Die **exponentielle Abnahme** hat die Eigenschaft, dass sich der Bestand in gleichen Intervallen um den gleichen Anteil verringert:

Intervall $[0;1]$: $\frac{9,8}{19,6} = 0,5 = 50 \%$  
Intervall $[2;3]$: $\frac{2,4}{4,9} = 0,49 = 49 \%$  
Intervall $[6;7]$: $\frac{0,16}{0,3} = 0,53 = 53 \%$  
...

In jedem Intervall der Breite $1$ verringert sich der Bestand um etwa 50%.

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPACYkz3iqT1ikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMc3T3qrIgAZJBkQYFLyyohgE7PliC7JMD1cAC8tiHiAFk9jcUwrLhJNsFGAPBBxF0uv0wFFohkIFkcp5UKI6gp1CCOmCIABfPFVBZ+Fr3NabbYtcH7YjHU7nCBlCqeG50+6PFDPN4fb6-f6A4EQRyg8GQ6HgOFIzxUXIQVHogCa2zAzUceLx81x9FxAEoRBIpJB8EgwEgVNF8vC0gBObQUXIWxIQG0ADntfmiqQgX20VrdMQAzMltF8-dEfp9tP7QwBWKW20MUONRwnRARx+J2lPOuNUATZejZPWSaQQP4WMCYFRGk3adYmez2aIwTwtbLasgAPnmckU+G0ogUIGNICcZY54KbLZlPiJfgB7yiP3m1S6uGAwCawHECm2AGIviBRPhRF8PMv-NIFOIANYgTfbvdJChIChWpBn2cPJCiD6OAf-TAP1nMlfyAolqSOW56R6PoQA1bV6F1eh6AAehQiAAFEYD+FAQA5XAzlACAACUQDgQdMABSQAhAQc0VwlAxGLSAKLGfgIEHciZiolBtBAbDJDwsBcF6exqyQTwVmMOjiiBFAogoHUGH1EtTXIVjxj4gBHQJjTk+FCyYg0IFEFQNLAbTdOEyRoniQyVNkFQAFljTMfjjHsUQkIcjikjMmY2O0BQkhENCSLIiieMwa9AgUNAQAgd5cHovCjJLTjIrkhBYvilQeyUftB2HJwumCURrJQciTCICd5lKlByrk+wYHbFZBzAWKUFlCAACoIBc4g+OwzzesWXU8RlegAEgVkvG873ELcd0FaQQDOGRgAqcE5tvPBCCIKJPRA7YsJwoSCPXBLSK4yi5NVTUkPofK+wHIcwBHRx3pgMFPGiWMICSBFBnqxrJHsVqOPATrBQAEhaFRVQAallbRlQAMVwaZ8HsCh22R1UAB0CaPcRICRgJUfEDGsZxvHBQAPRgGHHFoCbPGmlZ2U5BdPkTEzFofFb3vWzaQHBQJ+gGohVEKC4KnVR7nsKt6Pq+n6Yn++IrXZqaQYq8HvEhjqFC6xw4YRiBkaQSnqZAbHcctwUICJknIBAemvHJ0Qbcxu3acdwnifwUnFlxZnWdxSbOaeF4eYzTwJCW7ZVpFrbPAlkApZlpYGUuPFdSAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPACYkz3iqT1ikgF13X38kGFxMKLAFQJA8-whMInEAdwRxYwBPBR4+KIAzJGBMSvy-fBAewOAwAEEYEBLvQeqIGCivCBQkAFsQKMc3T3qrIgAZJBkQYFLyyohgE7PliC7JMD1cAC8tiHiAFk9jcUwrLhJNsFGAPBBxF0uv0wFFohkIFkcp5UKI6gp1CCOmCIABfPFVBZ+Fr3NabbYtcH7YjHU7nCBlCqeG50+6PFDPN4fb6-f6A4EQRyg8GQ6HgOFIzxUXIQVHogCa2zAzUceLx81x9FxAEoRBIpJB8EgwEgVNF8vC0gBObQUXIWxIQG0ADntfmiqQgX20VrdMQAzMltF8-dEfp9tP7QwBWKW20MUONRwnRARx+J2lPOuNUATZejZPWSaQQP4WMCYFRGk3adYmez2aIwTwtbLasgAPnmckU+G0ogUIGNICcZY54KbLZlPiJfgB7yiP3m1S6uGAwCawHECm2AGIviBRPhRF8PMv-NIFOIANYgTfbvdJChIChWpBn2cPJCiD6OAf-TAP1nMlfyAolqSOW56R6PoQA1bV6F1eh6AAehQiAAFEYD+FAQA5XAzlACAACUQDgQdMABSQAhAQc0VwlAxGLSAKLGfgIEHciZiolBtBAbDJDwsBcF6exqyQTwVmMOjiiBFAogoHUGH1EtTXIVjxj4gBHQJjTk+FCyYg0IFEFQNLAbTdOEyRoniQyVNkFQAFljTMfjjHsUQkIcjikjMmY2O0BQkhENCSLIiieMwa9AgUNAQAgd5cHovCjJLTjIrkhBYvilQeyUftB2HJwumCURrJQciTCICd5lKlByrk+wYHbFZBzAWKUFlCAACoIBc4g+OwzzesWXU8RlegAEgVkvG873ELcd0FaQQDOGRgAqcE5tvPBCCIKJPRA7YsJwoSCPXBLSK4yi5NVTUkPofK+wHIcwBHRx3pgMFPGiWMICSBFBnqxrJHsVqOPATrBQAEhaFRVQAallbRlQAMVwaZ8HsCh22R1UAB0CaPcRICRgJUfEDGsZxvHBQAPRgGHHFoCbPGmlZ2U5BdPkTEzFofFb3vWzaQHBQJ+gGohVEKC4KnVR7nsKt6Pq+n6Yn++IrXZqaQYq8HvEhjqFC6xw4YRiBkaQSnqZAbHcctwUICJknIBAemvHJ0Qbcxu3acdwnifwUnFlxZnWdxSbOaeF4eYzTwJCW7ZVpFrbPAlkApZlpYGUuPFdSAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
  y = 19,5914 \cdot 0,5^x
$$

Wenn für die **Basis** der Exponentialfunktion gilt: $0 < b < 1$, dann liegt eine **exponentielle Abnahme** vor.

Die Umrechnung zur Basis $e$ liefert:

$$
  y = 19,5914 \cdot e^{ln(0,500352) \cdot x} = 19,5914 \cdot e^{-0,692443 \cdot x}
$$

---

### Exponentielle Zunahme

|||||||||||
|-|-|-|-|-|-|-|-|-|-|
| x | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 
| y | 2,0 | 2,8 | 3,9 | 5,5 | 7,7 | 10,7| 15,0| 21,1| 29,5| 41,3|

##### Schaubild:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAGYAVk94qk9YpIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFBGeZHaBWk6KJCD2gAceRtcogSW0AE5PX5oklPCltClAzFfhABNoBJHomkvlQ4wmKOkw46bQI7fFtPEE267X7wzl6DkjZJpBB-hYwJgVGaLdoNiZ7PZojBPK0cvqyAA+BZyRT4bSiBQgc0gJy1nkQzvd9E+Ml+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8W-80gU4gA1iAD0fT8iKEgKH6kLeV48SCiJ8jjjgCmD-iuVIgZBZL0scdzMr0-QgDq+r0IaQA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAGYAVk94qk9YpIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFBGeZHaBWk6KJCD2gAceRtcogSW0AE5PX5oklPCltClAzFfhABNoBJHomkvlQ4wmKOkw46bQI7fFtPEE267X7wzl6DkjZJpBB-hYwJgVGaLdoNiZ7PZojBPK0cvqyAA+BZyRT4bSiBQgc0gJy1nkQzvd9E+Ml+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8W-80gU4gA1iAD0fT8iKEgKH6kLeV48SCiJ8jjjgCmD-iuVIgZBZL0scdzMr0-QgDq+r0IaQA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

##### Regressionshypothese

Exponentialfunktion mit $y = a \cdot b^x$ oder $y = a \cdot e^{ln(b) \cdot x}$

##### Rechnerische Überprüfung

Die **exponentielle Zunahme** hat die Eigenschaft, dass sich der Bestand in gleichen Intervallen um den gleichen Anteil vergrößert. 

Intervall $[0;1]$: $\frac{2,8}{2} = 1,40 = 140 \%$  
Intervall $[2;3]$: $\frac{5,5}{3,9} = 1,41 = 141 \%$  
Intervall $[6;7]$: $\frac{21,1}{15,0} = 1,41 = 141 \%$  
...

In jedem Intervall der Breite $1$ vergrößert sich der Bestand um etwa 40%.

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAGYAVk94qk9YpIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFBGeZHaBWk6KJCD2gAceRtcogSW0AE5PX5oklPCltClAzFfhABNoBJHomkvlQ4wmKOkw46bQI7fFtPEE267X7wzl6DkjZJpBB-hYwJgVGaLdoNiZ7PZojBPK0cvqyAA+BZyRT4bSiBQgc0gJy1nkQzvd9E+Ml+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8W-80gU4gA1iAD0fT8iKEgKH6kLeV48SCiJ8jjjgCmD-iuVIgZBZL0scdzMr0-QgDq+r0Ia9D0AA9NhEAAKIwP8KAgDyuDnKAEAAEogHAE6YICkgBCAE5YiRKBiFWkD0eM-AQBOdGzIxKDaCARGSKRYC4H09hNkgnirMYrElMCKBRBQBoMMa1aWuQPETKJACOgTmqpCIVpxJoQKIKj6WARkmVJkjOhZ2myCoACy5pmGJxj2KImFufxyK2bMvHaAoyIiLh1G0fRwmYE+gQKGgIAQB8uBsaRlnVgJ8WqQgyWpSow5KGOE5Tk43TBKITkoHRJhEPOCzVSgtWqfYMB9qsE5gMlKAYhAABUEBecQolEf5w1LIaRLovQACQqwPs+r7iIex6itIIDnDIwCVBCK0vnghBEFE3rQTshHEZJ5F7mlNGCQxqmarqmH0KVo7jpOYDTo4v0wOCnjOskiJDK17WSPY3X8eA-WigAJK0KiagA1Bi2jqgAYrgMz4PYFB9ujmoADok5e4iQGjASY+ION4wTROigAejACOOLQc2eItqzcry65fOm1nre+W2-bt+0gBCgQDGNRCqEUlyVNq72feVP1-QDQMxC6yJFhAi0Q3V0PeLDfUKANjhIyjEDo0gtP0yA+OE7booQGTFOQCAzNeNTogO7jTuM67pPk-glNLIS7Oc4S82888rwC-EQsSBtOzbRLB2eDLIBywrywslcRKGkAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEZPAGYAVk94qk9YpIBdd19-JBhcTCiwBUCQfP8ITCJxAHcEcWMATwUePiiAMyRgTCqCv3wQXsDgMABBGBBS7yGaiBgorwgUJABbECjHN08GqyIAGSQZEGAyiqqIYFPzlYhuyTA9XAAvbYh4gBZPY3FMFZcJIdgowB4IOJut0BmAotFMhBYgAmZF5CCoUT1BTqUGdcEQAC+ROqiz8rQe6y2O1aEIOxBOZwuEHKlU8tyZDyeKBe70+Pz+AKBIIgjjBEKhMPA8JRyM8VHRmOxAE0dmAWo4iUSFoT6ISAJQiCRSSD4JBgJAqaIFBGeZHaBWk6KJCD2gAceRtcogSW0AE5PX5oklPCltClAzFfhABNoBJHomkvlQ4wmKOkw46bQI7fFtPEE267X7wzl6DkjZJpBB-hYwJgVGaLdoNiZ7PZojBPK0cvqyAA+BZyRT4bSiBQgc0gJy1nkQzvd9E+Ml+QEfKK-BY1bq4YDAZrAcQKHYAYm+IFE+FE3w8W-80gU4gA1iAD0fT8iKEgKH6kLeV48SCiJ8jjjgCmD-iuVIgZBZL0scdzMr0-QgDq+r0Ia9D0AA9NhEAAKIwP8KAgDyuDnKAEAAEogHAE6YICkgBCAE5YiRKBiFWkD0eM-AQBOdGzIxKDaCARGSKRYC4H09hNkgnirMYrElMCKBRBQBoMMa1aWuQPETKJACOgTmqpCIVpxJoQKIKj6WARkmVJkjOhZ2myCoACy5pmGJxj2KImFufxyK2bMvHaAoyIiLh1G0fRwmYE+gQKGgIAQB8uBsaRlnVgJ8WqQgyWpSow5KGOE5Tk43TBKITkoHRJhEPOCzVSgtWqfYMB9qsE5gMlKAYhAABUEBecQolEf5w1LIaRLovQACQqwPs+r7iIex6itIIDnDIwCVBCK0vnghBEFE3rQTshHEZJ5F7mlNGCQxqmarqmH0KVo7jpOYDTo4v0wOCnjOskiJDK17WSPY3X8eA-WigAJK0KiagA1Bi2jqgAYrgMz4PYFB9ujmoADok5e4iQGjASY+ION4wTROigAejACOOLQc2eItqzcry65fOm1nre+W2-bt+0gBCgQDGNRCqEUlyVNq72feVP1-QDQMxC6yJFhAi0Q3V0PeLDfUKANjhIyjEDo0gtP0yA+OE7booQGTFOQCAzNeNTogO7jTuM67pPk-glNLIS7Oc4S82888rwC-EQsSBtOzbRLB2eDLIBywrywslcRKGkAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Die Messwerte werden in guter Näherung mit folgender Funktionsgleichung geeignet modelliert:

$$
  y = 1,996555 \cdot 1,400154^x
$$

Wenn für die **Basis** der Exponentialfunktion gilt: $b > 1$, dann liegt eine **exponentielle Zunahme** vor.

Die Umrechnung zur Basis $e$ liefert:

$$
  y = 1,996555 \cdot e^{ln(1,400154) \cdot x} = 2,0 \cdot e^{0,33658 \cdot x}
$$

---

## Physikalisierung des Funktionsterms

Wenn auf der Basis von Messwerten eine mathematische Funktion durch eine geeignete Regression bestimmt wurde, beschreibt diese Funktion nur die Zahlenwerte in guter Näherung, ohne die physikalische Bedeutung zu berücksichtigen. 

In einem nächsten Schritt wird die mathematische Funktion "**physikalisiert**":

1. Man ersetzt die $x$- und $y$-Variable durch **passende physikalische Symbole** auf Basis des durchgeführten Experiments.

2. Man ergänzt auf der rechten Seite **sinnvolle physikalische Einheiten**. 

---

### Aufgabe 1

Modelliert man ein Atom klassisch als ein Teilchen, dann gilt für seine mittlere kinetische Energie in einem Gas der Temperatur $T$:

$$
  E_{\text{kin}} = \tfrac{3}{2} \cdot k \cdot T
$$

mit $k = 1,381 \cdot 10^{-23} \tfrac{\text{J}}{\text{K}}$ als Boltzmann-Konstante.

Für die kinetische Energie $E_{\text{kin}}$ gilt:

$$
  E_{\text{kin}} = \tfrac{1}{2} \cdot m \cdot v^2
$$

Also folgt:

$$
\tfrac{3}{2} \cdot k \cdot T = \tfrac{1}{2} \cdot m \cdot v^2
$$

Die quadratische Mittelgeschwindigkeit eines Atoms ist von der Temperatur des Gases abhängig.

Schickt man einen Atomstrahl bei einer Temperatur $T$ auf einen geeigneten Kristall, dann kann man Interferenzphänomene beobachten. Ein Atom kann quantenphysikalisch als **Materiewelle mit einer Wellenlänge $\lambda$** aufgefasst werden. 

Die Brücke zwischen dem klassischen Modell eines Atoms als Teilchen mit einer kinetischen Energie und dem quantenphysikalischen Modell eines Atoms als Materiewelle hat **Louis de Broglie** geschlagen. Einem Atom der Masse $m$ und der Geschwindigkeit $v$ kann die Wellenlänge $\lambda$ wie folgt zugeordnet werden:

$$
  \lambda = \frac{h}{m \cdot v}
$$

In einem Versuch wurde mit Hilfe eines Kristalls als Interferenzgitter ein Interferenzbild erzeugt, mit dessen Hilfe die Wellenlänge eines Heliumatoms in Abhängigkeit von der Temperatur des Gases gemessen werden kann.

| | | | | | | | | | | |
|-|-|-|-|-|-|-|-|-|-|-|
| $T$ in $\text{K}$ | 90 | 120 | 170 | 210 | 260 | 350 | 420 | 500 | 680 | 850 |
| $\lambda$ in $10^{-12} \, \text{m}$ | 91,8 | 79,2 | 66,7 | 60,1 | 54,0 | 46,5 | 42,6 | 38,9 | 33,5 | 29,7 |

Für diese Werte wurde mit einer geeigneten Potenz-Regression folgende Formel modelliert:

$$
  y = 869,6 \cdot 10^{-12} \cdot x^{-0,5}
$$

- Führe eine geeignete **Physikalisierung** des ermittelten Funktionsterms durch.

<details>

  <summary>Lösungsvorschlag</summary>
  
Für das $y$ auf der linken Seite setzt man $\lambda(T)$ und auf der rechten Seite setzt man für das $x$ die Temperatur $T$ ein. Es folgt:

$$
\lambda(T) = 869,6 \cdot 10^{-12} \cdot T^{-0,5}
$$

Die physikalische Einheit der Wellenlänge $\lambda$ ist $\text{m}$ (Meter), das heißt, dass auch auf der rechten Seite der Funktionsgleichung die Einheit $\text{m}$ (Meter) stehen muss. 

Die Temperatur $T$ hat die Einheit $\text{K}$ (Kelvin), steht aber als Wurzel im Nenner:

$$
  \lambda(T) = 869,6 \cdot 10^{-12} \cdot T^{-0,5} = 869,6 \cdot 10^{-12} \cdot \frac{1}{\sqrt{T}}
$$

Um aus dem Produkt der rechten Seite die Einheit $\text{m}$ zu erhalten, muss der Faktor die Einheit $\sqrt{\text{K}} \cdot \text{m}$ bekommen. Dadurch kürzt sich bei eingesetzem Wert $\sqrt{\text{K}}$ heraus und es bleibt wie gefordert $\text{m}$ als Einheit der Wellenlänge.

$$
\lambda(T) = 869,6 \cdot 10^{-12} \sqrt{\text{K}} \cdot \text{m} \cdot \frac{1}{\sqrt{T}}
$$

$\lambda$ und $T$ sind hier physikalische Größen. Setzt man für $T$ einen Wert ein, hat dieser die Einheit $\text{K}$ (Kelvin).Beispiel:

$$
\lambda(90 \: \text{K}) = 869,6 \cdot 10^{-12} \sqrt{\text{K}} \cdot \text{m} \cdot \frac{1}{\sqrt{90 \: \text{K}}} = 91,66 \cdot 10^{-12} \frac{\sqrt{\text{K}} \cdot \text{m}}{\sqrt{\text{K}}} = 91,66 \cdot 10^{-12} \: \text{m}
$$

Die vollständig physikalisierte Funktionsgleichung lautet:

$$
\lambda(T) = 869,6 \cdot 10^{-12} \sqrt{\text{K}} \cdot \text{m} \cdot \frac{1}{\sqrt{T}}
$$

</details>

---

### Aufgabe 2

In einem Experiment wird die magnetische Flussdichte $B$ in einer Spulenanordnung in Abhängigkeit vom Ort $s$ gemessen. Eine geeignete Regression liefert folgenden Term:

$$
 y = 3,5 \cdot 10^{-3} \cdot x - 1,7 \cdot 10^{-2}
$$

- **Physikalisiere** diese Funktionsgleichung.

<details>

  <summary>Lösungsvorschlag</summary>
  
$y$ wird durch $B(s)$ ersetzt, da die Messgröße die magnetische Flussdichte $B$ in Abhängigkeit vom Ort $s$ ist.

Auf der linken Seite der Gleichung steht die physikalische Größe $B$ mit der Einheit $\text{T}$ (Tesla). Also muss die rechte Seite der Gleichung auch die Einheit $\text{T}$ liefern. 

Die additive Konstante bekommt die Einheit $\text{T}$. Die unabhängige Variable $x$ wird mit dem Ort $s$ ersetzt. Der Faktor $3,5 \cdot 10^{-3}$ bekommt die Einheit $\frac{\text{T}}{\text{m}}$, damit beim Einsetzen eines Messwertes für den Ort $s$ mit der Einheit $\text{m}$, die Einheit $\text{m}$ gekürzt wird und $\text{T}$ bleibt.

Die vollständig physikalisierte Funktionsgleichung lautet:

$$
  B(s) = 3,5 \cdot 10^{-3} \frac{\text{T}}{\text{m}} \cdot s - 1,7 \cdot 10^{-2} \, \text{T}
$$

</details>

---
