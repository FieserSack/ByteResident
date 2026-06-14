# 0004 – Tech-Stack: Godot 4, Windows-first

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Byte Resident braucht eine Desktop-Anwendung mit **2D-Querschnitts-Ansicht** (Spiritual Successor von *Little Computer People*), Dialog-Schwerpunkt, autonomer Simulation und später optionalem lokalem LLM ([ADR 0005](0005-lokales-llm-dialog.md), Einführungspfad [ADR 0007](0007-scripted-dialog-ki-plugin.md)).

Tech-Stack war offen (Vision, Architektur-Übersicht).

## Entscheidung

### Spielengine: Godot 4.6

**[Godot Engine 4.6](https://godotengine.org)** (MIT-Lizenz) für Client, Simulation und Darstellung. Projektpfad: `src/project.godot`.

| Kriterium | Begründung |
|-----------|------------|
| 2D-Querschnitt / LCP-Stil | Seitenansicht, Räume, Laufen, Objekte — Kernkompetenz der Engine |
| Dialog + Simulation parallel | UI und Spiel-Loop in einer App |
| Desktop-Export | Windows-Build ohne Web-Overhead |
| Indie-tauglich | Leichtgewichtig, keine Runtime-Gebühren |
| HTTP zu Ollama | Für optionales KI-Plugin ([ADR 0007](0007-scripted-dialog-ki-plugin.md)) |

### Sprache (Godot)

- **GDScript** als Primärsprache für Spielcode
- C# optional, falls später Team-Präferenz — nicht vorgesehen für Phase 1

### Zielplattform (Phasen)

| Phase | Plattform |
|-------|-----------|
| **Phase 1 – Prototyp** | **Windows only** |
| Später | macOS, Linux (nach stabilem Windows-Build) |

### Darstellung

- **2D-Querschnitt**, Retro-Anmutung (80er-Lebenssimulation)
- Kein 3D, kein Wetter/Fenster (Vision Nicht-Ziele)

### Installation

- **All-in-one-Installer** für Windows (z. B. Inno Setup)
- **Kernspiel** enthält: Godot-Export, scripted Dialog-System, Persönlichkeits-Schicht
- **KI-Plugin** (Ollama + Modell): **nicht** im Basis-Installer — separat downloadbar ([ADR 0007](0007-scripted-dialog-ki-plugin.md))

### Modul-Mapping (`src/` → Godot)

| Logisches Modul | Godot-Umsetzung (geplant) |
|-----------------|---------------------------|
| `core/` | Hauptszene, Game-Loop, Autoloads |
| `world/` | TileMap / Szenen pro Raum |
| `agents/` | CharacterBody2D, Verhalten |
| `personality/` | Ressourcen + State (Traits, Memory) |
| `dialogue/` | Dialog-Provider-Interface (scripted / KI) |
| `ui/` | Chat-UI, Beobachtungsansicht |
| `persistence/` | JSON-Dateien ([ADR 0008](0008-persistenz-json.md)) |

Konkrete Ordnerstruktur unter `src/` wird beim Projekt-Setup in Godot angelegt.

## Konsequenzen

### Positiv

- Schneller Prototyp mit Fokus auf Wohnung + Figur + scripted Dialog
- Kleiner Basis-Installer ohne mehrere GB Modell
- Windows-first reduziert Test- und Support-Aufwand am Anfang

### Negativ / Offen

- Godot-Erfahrung im Team nötig (lernbar)
- KI-Plugin-Integration und Installer zweigleisig
- macOS/Linux bewusst zurückgestellt
- Persistenz-Format (JSON vs. SQLite) — [ADR 0008](0008-persistenz-json.md) ✓

## Nächste Schritte

1. Godot-4-Projekt unter `src/` anlegen
2. Windows-Export und Installer-Skizze
3. Dialog-Provider-Interface (scripted + Plugin-Hook) — [ADR 0007](0007-scripted-dialog-ki-plugin.md)
