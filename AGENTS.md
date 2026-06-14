# Agent-Anweisungen – Byte Resident

Zentrale Richtlinien für KI-Agenten in diesem Repository.

## Spiel

- **Name:** Byte Resident
- **Untertitel:** Dein kleiner Untermieter im PC
- **Positionierung:** Spiritual Successor klassischer 80er-Lebenssimulationen – kein Remake von *Little Computer People*
- **Repository:** `ByteResident`

## Sprache

Antworten und Dokumentation: **Deutsch**. Code-Identifikatoren: Englisch.

## Projektstatus

Planungsphase – noch kein Anwendungscode unter `src/`. Tech-Stack ist offen.

## Wichtige Pfade

| Pfad | Inhalt |
|------|--------|
| `docs/` | Dokumentation, Pläne, Checklisten, ADRs |
| `docs/planning/` | Vision, Roadmap, Anforderungen |
| `docs/architecture/` | Systemdesign |
| `docs/guides/` | Anleitungen inkl. Cursor-Workflow |
| `docs/checklists/` | DoD, Release-Checkliste |
| `docs/adr/` | Architecture Decision Records |
| `.cursor/rules/` | Automatisch angewandte Projektregeln |
| `.cursor/skills/` | Spezialisierte Agent-Workflows |
| `.cursor/hooks.json` | Event-Hooks (aktuell leer) |
| `src/` | Anwendungscode (Platzhalter) |
| `assets/` | Medien und Grafiken |
| `scripts/` | Hilfsskripte |

## Regeln

1. Dokumentation lebt in `docs/` – nicht im Root verstreuen
2. Architekturentscheidungen als ADR in `docs/adr/` festhalten
3. Bestehende Konventionen beachten (siehe `.cursor/rules/project-conventions.mdc`)
4. Minimaler Scope – nur relevante Änderungen
5. Keine Secrets committen

## Workflows

- Dokumentation pflegen → Skill `.cursor/skills/docs-workflow/SKILL.md`
- Cursor-Tools verstehen → `docs/guides/cursor-workflow.md`
- Feature abschließen → `docs/checklists/definition-of-done.md`
- Release vorbereiten → `docs/checklists/release.md`

## Lesereihenfolge für neuen Kontext

1. `docs/planning/vision.md`
2. `docs/planning/roadmap.md`
3. `docs/architecture/overview.md`
4. Relevante ADRs in `docs/adr/`
