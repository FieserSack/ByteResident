# Kommende Features

> **Für später** — noch nicht in Roadmap oder Anforderungen. Details siehe Feature-Einträge unten.

Dieses Dokument sammelt **konkrete Feature-Beschreibungen**, die über die aktuelle [Vision](vision.md) hinausgehen oder Details für spätere Phasen festhalten. Jedes Feature erhält eine ID (`UF-NNN`).

## Legende

| Status | Bedeutung |
|--------|-----------|
| 📝 Konzept | Beschreibung angelegt, nicht priorisiert |
| 🔍 Prüfen | Abhängigkeiten und Machbarkeit klären |
| 📋 Geplant | Für Roadmap vorgemerkt |
| ✅ Übernommen | In [requirements.md](requirements.md) / Roadmap eingepflegt |
| 📅 Später | Bewusst zurückgestellt, nach aktuellem MVP |
| ❌ Verworfen | Nicht umsetzen |

## Übersicht

| ID | Feature | Status | Ziel-Phase (vorläufig) |
|----|---------|--------|------------------------|
| [UF-001](#uf-001--geschenkmechanik) | Geschenkmechanik | 📅 Später | nach MVP (Phase 3+) |

---

## UF-001 – Geschenkmechanik

- **Status:** 📅 Später
- **Priorität (vorläufig):** P2
- **Abhängigkeiten:** [ADR 0003](../adr/0003-spieler-interaktionsmodell.md) (nur Dialog), [personality-model.md](personality-model.md) (Hobbys, Beziehung, Memory)

### Kurzbeschreibung

Der Anwender kann dem Bewohner **Geschenke zukommen lassen** – ausschließlich **über Gespräch**, nicht per Klick oder Inventar-Menü. Der Bewohner entscheidet selbst, ob er ein Geschenk annimmt, nutzt, wegräumt oder ablehnt.

### Spielprinzip

```text
Anwender (Dialog)     →  „Ich hab dir ein Buch mitgebracht.“
Bewohner (autonom)    →  annimmt | lehnt ab | legt beiseite | nutzt später
Wohnung               →  Objekt erscheint nur, wenn Bewohner zustimmt / platziert
```

Kein direktes „Item geben“-UI. Das Geschenk ist eine **Absicht im Dialog**; die Figur macht daraus eine **eigene Entscheidung**.

### Geschenk-Arten (Entwurf)

| Typ | Beispiel | Wirkung (Entwurf) |
|-----|----------|-------------------|
| **Verzehr** | Obst, Snacks, Getränk | Füllt Vorrat; bei Hunger relevant (Notfall-Vermeidung) |
| **Einrichtung** | Lampe, Kissen, Deko | Bewohner platziert selbst (oder lehnt ab) |
| **Hobby** | Buch, Instrument, Bastelzeug | Kann [Hobbys](personality-model.md#hobbys--interessen-entwurf) anregen |
| **Gefühl** | Brief, Karte, kleines Andenken | Beziehung, Memory (Kernmoment) |

Konkrete Item-Liste und Grafiken: TBD.

### Ablauf (Entwurf)

1. Anwender erwähnt Geschenk im Dialog (kaufen, mitbringen, überreichen)
2. System prüft: Ist Geschenk „verfügbar“? (TBD: virtuelles Budget, Zeit, Anlass – noch offen)
3. Bewohner antwortet passend zu **Persönlichkeit + Beziehung**
4. Bei Annahme: Objekt wird Teil der Wohnung / des Vorrats – durch **Aktion des Bewohners**, nicht sofort per UI
5. Ereignis fließt in **Memory**; kann Hobby und Beziehung beeinflussen

### Entscheidungsfaktoren (Bewohner)

- Persönlichkeit (z. B. stur vs. dankbar)
- Beziehungsstand zum Anwender
- Passung zum Interesse / Hobby
- Situation (z. B. schon genug Deko, kein Hunger)
- Geschenk-Typ (unpassendes Geschenk → höhere Ablehn-Chance)

### Abgrenzung

| Vorgesehen | Nicht vorgesehen |
|------------|------------------|
| Geschenk im Dialog ankündigen / anbieten | Drag & Drop, Geschenk-Menü |
| Bewohner entscheidet Annahme & Nutzung | Sofortiges Erscheinen ohne Zustimmung |
| Geschenk beeinflusst Hobby & Beziehung | Pay-to-win, In-App-Käufe |
| Geschenk als Kernmoment im Memory | Unbegrenzte Geschenk-Spam ohne Reaktion |

### Soziale Erweiterung (später, TBD)

Bei [Besuchen](vision.md#bewohner--bewohner-besuche) ([ADR 0006](../adr/0006-besuchs-system.md)):

- Spieler A könnte im Dialog **eigener** Figur mitgeben, etwas mitzubringen
- Bewohner B (Gastgeber) reagiert autonom – Anwender B spricht nicht direkt mit fremder Figur
- Geschenk zwischen **Bewohnern** als Beziehungsmoment

Details: mit Besuchs-System gemeinsam ausarbeiten.

### Offene Fragen

- [ ] Gibt es ein begrenztes „Budget“ oder Zeitfenster für Geschenke?
- [ ] Werden Geschenke grafisch dargestellt oder zunächst nur dialogisch?
- [ ] Kann der Bewohner Geschenke zurückgeben oder weiterverschenken?
- [ ] Geschenke beim Besuch: nur Ankündigung vorab oder auch spontan im Spieler-Chat + Dialog mit eigener Figur?
- [ ] Wie verknüpft sich Geschenk mit Vorrats-Notfall (kein Essen mehr)?

### Nächste Schritte (wenn Feature priorisiert wird)

1. In [requirements.md](requirements.md) als FR aufnehmen
2. Roadmap-Meilenstein setzen
3. Datenmodell: Geschenk-Angebot, Annahme, Objekt-State
4. Mit Hobby- und Vorrats-System abstimmen

---

## Neue Features (Vorlage)

```markdown
## UF-NNN – Titel

- **Status:** 📝 Konzept
- **Priorität (vorläufig):** P?
- **Abhängigkeiten:** …

### Kurzbeschreibung
…
```
