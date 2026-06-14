# Anforderungen

> Status: Planungsphase – Entwurf

## Funktionale Anforderungen

### FR-001 – Autonomer Charakter

- **Priorität:** P0
- **Beschreibung:** Mindestens ein Charakter bewegt sich eigenständig durch die Wohnung und führt Aktionen aus.
- **Akzeptanzkriterien:**
  - [ ] Charakter hat sichtbare Position im Raum
  - [ ] Charakter wählt Aktionen ohne direkte Spielersteuerung
  - [ ] Aktionen sind für den Spieler nachvollziehbar (Animation/Feedback)

### FR-002 – Bedürfnis-System

- **Priorität:** P0
- **Beschreibung:** Charaktere haben Bedürfnisse, die sich über Zeit ändern und Verhalten beeinflussen.
- **Akzeptanzkriterien:**
  - [ ] Mindestens ein Bedürfnis (z. B. Hunger) modelliert
  - [ ] Bedürfnis beeinflusst Priorität der nächsten Aktion
  - [ ] Bedürfnis ist im UI sichtbar

### FR-003 – Wohnungs-Umgebung

- **Priorität:** P0
- **Beschreibung:** Spielbare Wohnung mit interaktiven Objekten.
- **Akzeptanzkriterien:**
  - [ ] Mindestens ein Raum darstellbar
  - [ ] Objekte haben definierte Interaktionspunkte
  - [ ] Charakter kann Objekte nutzen

### FR-004 – Spieler-Eingriffe

- **Priorität:** P1
- **Beschreibung:** Spieler kann indirekt eingreifen (Objekte platzieren, Essen geben).
- **Akzeptanzkriterien:**
  - [ ] Spieler kann mindestens eine Aktion auslösen
  - [ ] Eingriff wirkt auf Charakter-Verhalten

### FR-005 – Persistenz

- **Priorität:** P2
- **Beschreibung:** Spielstand kann gespeichert und geladen werden.
- **Akzeptanzkriterien:**
  - [ ] Zustand überlebt Neustart der Anwendung
  - [ ] Speichern/Laden ist für den Spieler zugänglich

## Nicht-funktionale Anforderungen

### NFR-001 – Performance

- Ziel: stabile Framerate auf Referenz-Hardware (noch zu definieren)
- Ladezeit unter 5 Sekunden für initialen Start

### NFR-002 – Wartbarkeit

- Code folgt Projekt-Konventionen ([../../CONTRIBUTING.md](../../CONTRIBUTING.md))
- Architekturentscheidungen als ADR dokumentiert

### NFR-003 – Dokumentation

- Alle Features haben Akzeptanzkriterien
- Setup-Anleitung in [../guides/getting-started.md](../guides/getting-started.md)

### NFR-004 – Barrierefreiheit

- TBD nach Plattform-Entscheidung

## Traceability

| Anforderung | Roadmap-Phase | ADR |
|-------------|---------------|-----|
| FR-001 | Phase 1 | – |
| FR-002 | Phase 2 | – |
| FR-003 | Phase 1 | – |
| FR-004 | Phase 2 | – |
| FR-005 | Phase 2 | – |
