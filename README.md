# Byte Resident

**Dein kleiner Untermieter im PC**

Digitale Lebenssimulation als Spiritual Successor klassischer 80er-Computersimulationen: Ein autonomer Bewohner lebt in einer Wohnung auf deinem PC – du sprichst mit ihm wie mit einem anderen Menschen, er entwickelt eine eigene Persönlichkeit, und du steuerst ihn nie direkt.

**Status:** Godot-4.6-Prototyp unter `src/`

## Dokumentation

Alle Pläne, Anleitungen und Entscheidungen befinden sich in [`docs/`](docs/):

| Bereich | Link |
|---------|------|
| Vision | [docs/planning/vision.md](docs/planning/vision.md) |
| Roadmap | [docs/planning/roadmap.md](docs/planning/roadmap.md) |
| Anforderungen | [docs/planning/requirements.md](docs/planning/requirements.md) |
| Spielname (ADR) | [docs/adr/0002-spielname-byte-resident.md](docs/adr/0002-spielname-byte-resident.md) |
| Interaktionsmodell (ADR) | [docs/adr/0003-spieler-interaktionsmodell.md](docs/adr/0003-spieler-interaktionsmodell.md) |
| Dialog-System (ADR) | [docs/adr/0005-lokales-llm-dialog.md](docs/adr/0005-lokales-llm-dialog.md) |
| Architektur | [docs/architecture/overview.md](docs/architecture/overview.md) |
| Tech-Stack (ADR) | [docs/adr/0004-tech-stack-godot-windows.md](docs/adr/0004-tech-stack-godot-windows.md) |
| Erste Schritte | [docs/guides/getting-started.md](docs/guides/getting-started.md) |
| Cursor-Workflow | [docs/guides/cursor-workflow.md](docs/guides/cursor-workflow.md) |

## Projektstruktur

```text
├── docs/          Dokumentation, Pläne, Checklisten, ADRs
├── src/           Anwendungscode (noch leer)
├── assets/        Grafiken, Audio, Sprites
├── scripts/       Hilfsskripte
├── .cursor/       KI-Konfiguration (Rules, Skills, Hooks)
└── AGENTS.md      Anweisungen für KI-Agenten
```

## Mitwirken

Siehe [CONTRIBUTING.md](CONTRIBUTING.md).

## Changelog

Siehe [CHANGELOG.md](CHANGELOG.md).
