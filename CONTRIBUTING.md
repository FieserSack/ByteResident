# Beitragsrichtlinien

Vielen Dank für dein Interesse an **Byte Resident**!

## Branch-Naming

```text
feature/kurze-beschreibung
fix/kurze-beschreibung
docs/kurze-beschreibung
chore/kurze-beschreibung
```

## Commit-Messages

Kurz und präzise, im Imperativ:

```text
docs: Vision um Kernfeatures ergänzen
feat: Bedürfnis-System für Hunger implementieren
fix: Charakter-Pfadfindung an Ecken korrigieren
```

## Pull Requests

1. Branch von `main` erstellen
2. Änderungen fokussiert halten (ein Thema pro PR)
3. [Definition of Done](docs/checklists/definition-of-done.md) prüfen
4. PR-Beschreibung: Was, Warum, Wie testen

## Dokumentationspflicht

| Änderung | Erforderliche Docs |
|----------|-------------------|
| Architekturentscheidung | Neues ADR in `docs/adr/` |
| Neues Feature | Requirements + ggf. Architektur-Docs |
| Release | CHANGELOG + Release-Checkliste |

## Code-Konventionen

- Bestehende Muster im Codebase befolgen
- Code-Identifikatoren auf Englisch
- Kommentare und Docs auf Deutsch
- Keine Secrets in Commits

## KI-Nutzung (Cursor)

- Projektregeln: `.cursor/rules/`
- Workflows: `.cursor/skills/`
- Details: [docs/guides/cursor-workflow.md](docs/guides/cursor-workflow.md)

## Fragen

Offene Punkte als Issue anlegen oder in `docs/planning/` dokumentieren.
