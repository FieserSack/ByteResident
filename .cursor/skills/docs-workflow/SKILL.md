---
name: docs-workflow
description: >-
  Dokumentations-Workflow für Byte Resident. Nutzen wenn ADRs geschrieben,
  Checklisten gepflegt, Roadmap aktualisiert oder Planungsdocs angelegt werden.
---

# Dokumentations-Workflow

Anleitung zum Pflegen der Projekt-Dokumentation in `docs/`.

## Wann welches Dokument?

| Situation | Ziel-Datei |
|-----------|------------|
| Projektziel oder Features ändern | `docs/planning/vision.md` |
| Meilenstein erreicht oder verschoben | `docs/planning/roadmap.md` |
| Neue Anforderung | `docs/planning/requirements.md` |
| Architekturentscheidung | `docs/adr/NNNN-titel.md` |
| Systemdesign skizzieren | `docs/architecture/overview.md` |
| Feature abgeschlossen | `docs/checklists/definition-of-done.md` prüfen |
| Release vorbereiten | `docs/checklists/release.md` |

## ADR schreiben

1. Nächste freie Nummer ermitteln (aktuell: 0003)
2. Datei anlegen: `docs/adr/NNNN-kurzer-titel.md`
3. Abschnitte: Status, Datum, Kontext, Entscheidung, Konsequenzen
4. Prozess-Referenz: `docs/adr/0001-record-architecture-decisions.md`

## Checklisten nutzen

- Vor Merge: Definition of Done durchgehen
- Vor Release: Release-Checkliste Punkt für Punkt abhaken
- Checkboxen in Markdown: `- [ ]` offen, `- [x]` erledigt

## Konsistenz prüfen

Nach Doc-Änderungen prüfen:

- Verweise in `docs/README.md` stimmen
- Roadmap-Status passt zu erledigten Meilensteinen
- Requirements-Traceability-Tabelle aktuell
- Bei Architekturänderung: `docs/architecture/overview.md` und ggf. ADR

## Sprache

Alle Dokumente auf **Deutsch** verfassen.
