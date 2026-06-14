# Erste Schritte

Willkommen bei **Byte Resident – Dein kleiner Untermieter im PC**!

## Voraussetzungen

- Git
- [Godot 4.6](https://godotengine.org/download) (Client unter `src/`)
- Cursor IDE (empfohlen für KI-gestützte Entwicklung)
- Windows (Zielplattform für Phase 1)

## Repository klonen

```bash
git clone <repository-url> ByteResident
cd ByteResident
```

## Godot-Projekt starten

1. Godot Engine öffnen
2. **Import** → Ordner `src/` wählen (`project.godot`)
3. **Run** (F5)

Details: [src/README.md](../../src/README.md). Tech-Stack: [ADR 0004](../adr/0004-tech-stack-godot-windows.md).

## Projekt verstehen (empfohlene Lesereihenfolge)

1. [Vision](../planning/vision.md) – Projektziel
2. [Roadmap](../planning/roadmap.md) – Phasen und Meilensteine
3. [Anforderungen](../planning/requirements.md) – Was gebaut werden soll
4. [Architektur-Übersicht](../architecture/overview.md) – Technischer Überblick
5. [Definition of Done](../checklists/definition-of-done.md) – Qualitätskriterien

## Ordnerstruktur

| Ordner | Zweck |
|--------|-------|
| `docs/` | Alle Dokumentation, Pläne, Checklisten |
| `src/` | Godot-4-Projekt (Anwendungscode) |
| `assets/` | Grafiken, Audio, Sprites |
| `scripts/` | Hilfsskripte |
| `.cursor/` | KI-Konfiguration (Rules, Skills, Hooks) |

## Mit KI arbeiten

Siehe [cursor-workflow.md](cursor-workflow.md) für Details zu Rules, Skills und Hooks.

Kurzfassung:

- Projektregeln liegen in `.cursor/rules/`
- Wiederverwendbare Workflows in `.cursor/skills/`
- Zentrale Agent-Anweisungen in `AGENTS.md` im Projekt-Root

## Beitragen

Lies [CONTRIBUTING.md](../../CONTRIBUTING.md) bevor du einen Pull Request erstellst.
