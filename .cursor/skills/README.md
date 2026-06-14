# Projekt-Skills

Skills sind Ordner mit einer `SKILL.md`-Datei. Sie lehren den Cursor-Agent spezifische Workflows.

## Vorhandene Skills

| Skill | Beschreibung |
|-------|--------------|
| [docs-workflow/](docs-workflow/SKILL.md) | ADRs, Checklisten und Planungsdocs pflegen |

## Neuen Skill anlegen

```text
.cursor/skills/mein-skill/
└── SKILL.md
```

Jede `SKILL.md` benötigt YAML-Frontmatter mit `name` und `description`.

**Nicht** in `~/.cursor/skills-cursor/` ablegen – das Verzeichnis ist für Cursor-interne Skills reserviert.

Weitere Infos: [docs/guides/cursor-workflow.md](../../docs/guides/cursor-workflow.md)
