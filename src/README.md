# Quellcode – Godot 4.6

Desktop-Client für **Byte Resident**. Engine: **Godot 4.6** — [ADR 0004](../docs/adr/0004-tech-stack-godot-windows.md).

## Projekt öffnen

1. [Godot 4.6](https://godotengine.org/download) installieren (Standard-Build, GDScript — .NET nicht nötig)
2. Godot starten → **Import** → Ordner `src/` wählen (`project.godot`)
3. Beim ersten Öffnen mit 4.6: Import-Dialog bestätigen (`.godot/`-Cache wird neu erzeugt)
4. **Run** (F5) — Hauptszene: `scenes/main.tscn`

## Struktur

```text
src/
├── project.godot          Godot-Projektdatei
├── scenes/                Haupt-, Wohnungs- und Chat-Szene
├── core/                  Game-Loop, Autoload GameState
├── world/                 Wohnung (2D-Querschnitt)
├── agents/                Bewohner (CharacterBody2D)
├── personality/           Traits, Memory-State
├── dialogue/              Scripted (Hybrid) + KI-Stub
├── ui/                    Chat-Panel
└── persistence/           JSON SaveManager (Autoload)
```

## Autoloads

| Name | Skript | Rolle |
|------|--------|-------|
| `GameState` | `core/game_state.gd` | Sim-Tick |
| `SaveManager` | `persistence/save_manager.gd` | JSON unter `%APPDATA%/ByteResident/` (Windows) |
| `DialogueManager` | `dialogue/dialogue_manager.gd` | Scripted Dialog (Standard) |

## Prototyp-Stand

- Einfache Querschnitts-Wohnung (Platzhalter-Grafik)
- Bewohner läuft autonom hin und her
- Chat mit **Hybrid-Scripted** Dialog ([ADR 0009](../docs/adr/0009-scripted-dialog-hybrid.md))
- KI-Provider nur Stub ([ADR 0007](../docs/adr/0007-scripted-dialog-ki-plugin.md))

## Windows-Export

In Godot: **Project → Export → Windows Desktop** (Export-Templates einmalig installieren).
