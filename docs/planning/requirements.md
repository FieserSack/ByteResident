# Anforderungen

> Status: Planungsphase – Entwurf

## Funktionale Anforderungen

### FR-001 – Autonomer Charakter

- **Priorität:** P0
- **Beschreibung:** Mindestens ein Charakter bewegt sich eigenständig durch die Wohnung und führt Aktionen aus. Der Anwender kann den Charakter nicht direkt steuern.
- **Akzeptanzkriterien:**
  - [ ] Charakter hat sichtbare Position im Raum
  - [ ] Charakter wählt Aktionen ohne direkte Anwendersteuerung
  - [ ] Keine UI-Elemente zur direkten Charaktersteuerung vorhanden
  - [ ] Aktionen sind für den Anwender nachvollziehbar (Animation/Feedback)

### FR-002 – Bedürfnis-System

- **Priorität:** P0
- **Beschreibung:** Charaktere haben Bedürfnisse, die sich über Zeit ändern und Verhalten beeinflussen.
- **Akzeptanzkriterien:**
  - [ ] Mindestens ein Bedürfnis (z. B. Hunger) modelliert
  - [ ] Bedürfnis beeinflusst Priorität der nächsten Aktion
  - [ ] Bedürfnis zeigt sich im Verhalten und Dialog, nicht als sichtbarer Balken

### FR-003 – Wohnungs-Umgebung

- **Priorität:** P0
- **Beschreibung:** Spielbare Wohnung mit interaktiven Objekten.
- **Akzeptanzkriterien:**
  - [ ] Mindestens ein Raum darstellbar
  - [ ] Objekte haben definierte Interaktionspunkte
  - [ ] Charakter kann Objekte eigenständig nutzen

### FR-004 – Dialog-Interaktion

- **Priorität:** P0
- **Beschreibung:** Der Anwender interagiert über natürliche Sprache mit dem Bewohner. **Start:** scripted Provider ([ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md)); optional KI-Plugin ([ADR 0005](../adr/0005-lokales-llm-dialog.md)).
- **Akzeptanzkriterien:**
  - [ ] Anwender kann Texteingaben an den Bewohner senden
  - [ ] Bewohner antwortet kontextbezogen (scripted: Traits + Templates)
  - [ ] Keine Klick-/Menü-Aktionen für Essen geben, Möbel platzieren o. Ä.
  - [ ] Dialog-Historie ist einsehbar (mindestens aktuelle Session)
  - [ ] Optional: KI-Plugin aktivierbar, wenn installiert

### FR-005 – Emergente Persönlichkeit

- **Priorität:** P0
- **Beschreibung:** Jeder Bewohner startet mit einer zufälligen Grundpersönlichkeit und entwickelt diese auf Basis der Gespräche mit dem Anwender weiter.
- **Akzeptanzkriterien:**
  - [ ] Bei Neustart eines Bewohners entsteht eine zufällige Grundpersönlichkeit
  - [ ] Gespräche beeinflussen messbar das Verhalten oder den Tonfall des Bewohners
  - [ ] Persönlichkeitsmerkmale bleiben über Sessions hinweg konsistent
  - [ ] Unterschiedliche Anwender führen zu unterschiedlichen Persönlichkeitsentwicklungen

### FR-006 – Autonome Umgebungsaktionen

- **Priorität:** P1
- **Beschreibung:** Der Bewohner führt Handlungen in der Wohnung selbstständig aus (essen, trinken, Objekte nutzen). Der Anwender kann darüber sprechen oder bitten, löst die Aktion aber nicht direkt aus.
- **Akzeptanzkriterien:**
  - [ ] Bewohner isst und trinkt autonom, wenn Bedürfnisse es erfordern
  - [ ] Bitten des Anwenders können das Verhalten beeinflussen, sind aber nicht bindend
  - [ ] Bewohner kann Bitten ablehnen oder ignorieren (passend zur Persönlichkeit)

### FR-007 – Persistenz

- **Priorität:** P2
- **Beschreibung:** Spielstand, Persönlichkeit und relevante Gesprächshistorie können gespeichert und geladen werden.
- **Akzeptanzkriterien:**
  - [ ] Zustand überlebt Neustart der Anwendung
  - [ ] Persönlichkeit und Dialog-Kontext werden mitgespeichert
  - [ ] Speichern/Laden ist für den Anwender zugänglich

### FR-008 – Beziehungsentwicklung

- **Priorität:** P0
- **Beschreibung:** Vertrauen und Nähe zwischen Anwender und Bewohner entwickeln sich über Zeit und Gespräche.
- **Akzeptanzkriterien:**
  - [ ] Beziehung beeinflusst Zugang zu Themen und Verhalten (z. B. Tagebuch, Ton)
  - [ ] Keine sichtbaren Beziehungsbalken
  - [ ] Langsame Progression – nicht alles sofort möglich

### FR-009 – Menschliches Memory

- **Priorität:** P0
- **Beschreibung:** Bewohner erinnert sich an Kernmomente; Kleinigkeiten können über Zeit verblassen.
- **Akzeptanzkriterien:**
  - [ ] Wichtige Ereignisse werden langfristig referenziert
  - [ ] Unwichtige Details können vergessen oder unscharf werden
  - [ ] Erinnerungen beeinflussen Dialog konsistent

### FR-010 – Konflikt und Versöhnung

- **Priorität:** P1
- **Beschreibung:** Konflikte im Dialog sind möglich; Versöhnung entsteht durch Gespräche und Persönlichkeit.
- **Akzeptanzkriterien:**
  - [ ] Bewohner kann widersprechen, gekränkt reagieren oder Streit anzeigen
  - [ ] Versöhnung ist möglich ohne mechanische „Quest“
  - [ ] Konfliktzustand beeinflusst Ton und Verhalten

### FR-011 – Name durch Gespräch

- **Priorität:** P1
- **Beschreibung:** Bewohner startet namenlos; Name entsteht im Dialog.
- **Akzeptanzkriterien:**
  - [ ] Start ohne festen Namen
  - [ ] Anwender kann Namen vorschlagen
  - [ ] Bewohner entscheidet selbst (annehmen, ablehnen, eigener Name)

### FR-012 – Tagebuch

- **Priorität:** P1
- **Beschreibung:** Bewohner führt Tagebuch; Anwender kann es lesen, wenn die Beziehung das zulässt.
- **Akzeptanzkriterien:**
  - [ ] Bewohner erzeugt Tagebuch-Einträge (autonom / ereignisgesteuert)
  - [ ] Lesen ist bei niedriger Beziehung blockiert oder reagiert im Dialog
  - [ ] Inhalt spiegelt Persönlichkeit und erlebte Momente

### FR-013 – Tagesrhythmus und Schlaf

- **Priorität:** P1
- **Beschreibung:** Tag und Nacht folgen der echten Uhrzeit; Schlafregeln für den Bewohner.
- **Akzeptanzkriterien:**
  - [ ] Nachts schläft Bewohner durch (Unterbrechungen möglich)
  - [ ] Tagsüber: nach spätestens 4 h Wachheit Bedarf an 10–30 Min Schlaf
  - [ ] Müdigkeit zeigt sich in Verhalten, nicht als Balken

### FR-014 – Offline-Nachhol-Dialog

- **Priorität:** P1
- **Beschreibung:** Kein Hintergrund-Tick offline; beim Wiedereinstieg wirkt es, als sei etwas passiert.
- **Akzeptanzkriterien:**
  - [ ] Keine Simulation bei geschlossener Anwendung
  - [ ] Beim Start: Bewohner kann „dazwischen“ im Dialog ansprechen
  - [ ] Inhalt abgeleitet aus letztem Zustand und verstrichener Zeit

### FR-015 – Besuche zwischen Bewohnern

- **Priorität:** P3
- **Beschreibung:** Eigener Bewohner kann Bewohner anderer Spieler per Code besuchen (z. B. Party). Anwender dialogt nur mit der eigenen Figur; optional Chat mit anderen Spielern.
- **Akzeptanzkriterien:**
  - [ ] Einladungs-, Freundschafts- und öffentliche Zugangscodes (mindestens ein Typ im MVP)
  - [ ] Anwender kann **nicht** direkt mit fremden Spielfiguren sprechen
  - [ ] Anwender kann mit der **eigenen** Spielfigur sprechen (wie im Solo-Spiel)
  - [ ] Optional: Spieler-zu-Spieler-Chat beim Besuch
  - [ ] Bei Party: gemeinsamer Spieler-Chat; Einfluss nur über Dialog mit eigener Figur
  - [ ] Bewohner-zu-Bewohner-Beziehungen folgen denselben Regeln wie Anwender-Beziehungen
  - [ ] Siehe [ADR 0006](../adr/0006-besuchs-system.md)

### FR-016 – Benachrichtigungen

- **Priorität:** P1
- **Beschreibung:** Dezente Hinweise; Notfälle dringlicher.
- **Akzeptanzkriterien:**
  - [ ] Alltägliche Meldungen selten und zurückhaltend
  - [ ] Dringende Zustände höhere Priorität (z. B. **kein Essen mehr**, Figur **hungrig**)
  - [ ] Frequenz abhängig von Persönlichkeit und Beziehung (TBD)

### FR-017 – Hobbys und Interessen

- **Priorität:** P1
- **Beschreibung:** Hobbys entwickeln sich aus Gesprächen und verfügbaren Spielmöglichkeiten.
- **Akzeptanzkriterien:**
  - [ ] Wiederholte Gespräche zu einem Thema können Interesse wecken
  - [ ] Vorhandene Einrichtung und Objekte können Hobbys begünstigen
  - [ ] Geschenke: siehe [UF-001](upcoming-features.md#uf-001--geschenkmechanik) (später)
  - [ ] Hobbys zeigen sich in autonomen Aktionen des Bewohners
  - [ ] Keine feste Hobby-Liste beim Start – emergent

## Nicht-funktionale Anforderungen

### NFR-001 – Performance

- Ziel: stabile Framerate auf Referenz-Hardware (noch zu definieren)
- Ladezeit unter 5 Sekunden für initialen Start
- Dialog-Antwortzeit (scripted): Ziel unter 1 Sekunde
- Dialog-Antwortzeit (KI-Plugin): Ziel unter 8 Sekunden auf Referenz-Hardware (16 GB RAM)

### NFR-002 – Wartbarkeit

- Code folgt Projekt-Konventionen ([../../CONTRIBUTING.md](../../CONTRIBUTING.md))
- Architekturentscheidungen als ADR dokumentiert

### NFR-003 – Dokumentation

- Alle Features haben Akzeptanzkriterien
- Setup-Anleitung in [../guides/getting-started.md](../guides/getting-started.md)

### NFR-004 – Barrierefreiheit

- TBD nach Plattform-Entscheidung
- Text-Eingabe muss mit gängigen Eingabehilfen nutzbar sein

## Traceability

| Anforderung | Roadmap-Phase | ADR |
|-------------|---------------|-----|
| FR-001 | Phase 1 | [0003](../adr/0003-spieler-interaktionsmodell.md) |
| FR-002 | Phase 2 | – |
| FR-003 | Phase 1 | – |
| FR-004 | Phase 1 | [0003](../adr/0003-spieler-interaktionsmodell.md), [0007](../adr/0007-scripted-dialog-ki-plugin.md), [0009](../adr/0009-scripted-dialog-hybrid.md), [0005](../adr/0005-lokales-llm-dialog.md) |
| FR-005 | Phase 2 | [0003](../adr/0003-spieler-interaktionsmodell.md), [0005](../adr/0005-lokales-llm-dialog.md), [personality-model.md](personality-model.md) |
| FR-006 | Phase 2 | [0003](../adr/0003-spieler-interaktionsmodell.md) |
| FR-007 | Phase 2 | [0008](../adr/0008-persistenz-json.md) |
| FR-008 | Phase 2 | [personality-model.md](personality-model.md) |
| FR-009 | Phase 2 | [personality-model.md](personality-model.md) |
| FR-010 | Phase 2 | [personality-model.md](personality-model.md) |
| FR-011 | Phase 2 | [personality-model.md](personality-model.md) |
| FR-012 | Phase 2 | [vision.md](vision.md) |
| FR-013 | Phase 2 | [vision.md](vision.md) |
| FR-014 | Phase 2 | [vision.md](vision.md) |
| FR-016 | Phase 2 | [vision.md](vision.md) |
| FR-017 | Phase 2 | [vision.md](vision.md), [personality-model.md](personality-model.md) |
| FR-015 | Phase 3 | [0006](../adr/0006-besuchs-system.md) |
