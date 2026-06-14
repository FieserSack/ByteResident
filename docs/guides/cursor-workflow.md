# Cursor-Workflow

Anleitung zur Nutzung von Cursor-KI-Tools in diesem Projekt.

## Übersicht

```text
AGENTS.md              → Zentrale Anweisungen für den Agent
.cursor/rules/         → Automatisch angewandte Projektregeln
.cursor/skills/        → Spezialisierte Workflows (on-demand)
.cursor/hooks.json     → Event-basierte Automatisierung
docs/                  → Menschliche Dokumentation (Quelle der Wahrheit)
```

## Rules (`.cursor/rules/`)

Rules sind `.mdc`-Dateien mit YAML-Frontmatter. Sie geben dem Agent dauerhaften Kontext.

| Datei | Gültigkeit | Inhalt |
|-------|------------|--------|
| `project-conventions.mdc` | alwaysApply | Sprache, Docs-first, Konventionen |

Neue Rule anlegen:

1. Datei in `.cursor/rules/` erstellen
2. Frontmatter mit `description`, optional `globs`, `alwaysApply` setzen
3. Regel kurz halten (unter 50 Zeilen empfohlen)

## Skills (`.cursor/skills/`)

Skills sind Ordner mit `SKILL.md`. Sie beschreiben spezifische Workflows.

| Skill | Zweck |
|-------|-------|
| `docs-workflow/` | ADRs, Checklisten und Pläne pflegen |

Neuen Skill anlegen:

```text
.cursor/skills/mein-skill/
└── SKILL.md
```

**Wichtig:** Skills nie in `~/.cursor/skills-cursor/` ablegen – das ist für Cursor-interne Skills reserviert.

## Hooks (`.cursor/hooks/`)

Hooks reagieren auf Agent-Events (z. B. nach Datei-Edit, vor Shell-Befehl).

Aktuell ist `hooks.json` leer vorbereitet. Hooks erst bei konkretem Bedarf hinzufügen:

- Formatierung nach Edit → `afterFileEdit`
- Shell-Befehle prüfen → `beforeShellExecution`
- Secrets in Prompts erkennen → `beforeSubmitPrompt`

Konfiguration: [`.cursor/hooks.json`](../../.cursor/hooks.json)

## AGENTS.md

Die Datei `AGENTS.md` im Projekt-Root ist der Einstiegspunkt für Agenten. Sie verweist auf Rules, Skills und Docs.

## Empfohlener Workflow

1. **Planen** → Inhalte in `docs/planning/` pflegen
2. **Entscheiden** → ADR in `docs/adr/` schreiben
3. **Implementieren** → Code in `src/`, Agent nutzt Rules
4. **Prüfen** → [Definition of Done](../checklists/definition-of-done.md)
5. **Release** → [Release-Checkliste](../checklists/release.md)

## Tipps

- Dokumentation und Code synchron halten
- Architekturänderungen immer als ADR festhalten
- Skills für wiederkehrende Team-Workflows nutzen, nicht für Einmal-Aufgaben
- Rules fokussiert halten – eine Rule pro Thema
