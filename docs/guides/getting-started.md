# Erste Schritte

Willkommen bei **Byte Resident – Dein kleiner Untermieter im PC**! Dieses Projekt befindet sich in der **Planungsphase**.

## Voraussetzungen

- Git
- Cursor IDE (empfohlen für KI-gestützte Entwicklung)
- Tech-Stack-Tools: **noch offen** – werden nach ADR-Entscheidung ergänzt

## Repository klonen

```bash
git clone <repository-url> ByteResident
cd ByteResident
```

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
| `src/` | Anwendungscode (noch leer) |
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

## Nächste Schritte für das Team

- [ ] Tech-Stack entscheiden (ADR schreiben)
- [ ] Entwicklungsumgebung dokumentieren
- [ ] Ersten Prototyp-Meilenstein starten
