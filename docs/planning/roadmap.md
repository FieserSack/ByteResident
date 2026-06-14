# Roadmap

> Status: Planungsphase

## Phasen

```text
Phase 0 – Planung        [aktuell]
Phase 1 – Prototyp       [offen]
Phase 2 – MVP            [offen]
Phase 3 – Sozial & Polish [offen]
Phase 4 – Release        [offen]
```

## Phase 0 – Planung

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Projektstruktur | erledigt | Ordner, Docs, Cursor-Konfiguration |
| Vision & Anforderungen | in Arbeit | [vision.md](vision.md), [requirements.md](requirements.md), [vision-ideas.md](vision-ideas.md) |
| Spielname | erledigt | [ADR 0002](../adr/0002-spielname-byte-resident.md) |
| Spieler-Interaktionsmodell | erledigt | [ADR 0003](../adr/0003-spieler-interaktionsmodell.md) |
| Tech-Stack-Entscheidung | erledigt | [ADR 0004](../adr/0004-tech-stack-godot-windows.md) |
| Dialog Einführung (scripted + KI-Plugin) | erledigt | [ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md) |
| Dialog-System (lokales LLM, Plugin) | erledigt | [ADR 0005](../adr/0005-lokales-llm-dialog.md) |
| Architektur-Skizze | erledigt | [../architecture/overview.md](../architecture/overview.md) |

## Persönlichkeitsmodell (eigener Strang)

> Detailplanung: [personality-model.md](personality-model.md) — läuft parallel zu den Hauptphasen, nicht blockiert durch Engine-Wahl.

| Phase | Status | Beschreibung |
|-------|--------|--------------|
| PM-0 Konzept | in Arbeit | Trait-Dimensionen, Zufall, Entwicklungsregeln |
| PM-1 Grundtraits | offen | Schema, Generator, Prompt-Mapping |
| PM-2 Memory | offen | Kurz- und Langzeit-Gedächtnis |
| PM-3 Entwicklung | offen | Gespräche formen Traits und Verhalten |
| PM-4 Integration | offen | Scripted Provider; später KI-Plugin ([ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md)) |
| PM-5 Persistenz | offen | Traits und Memory speichern |

## Phase 1 – Prototyp

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Minimaler Spiel-Loop | offen | Charakter bewegt sich autonom, ein Bedürfnis |
| Raum-Darstellung | offen | Einfache Wohnung visualisieren |
| Basis-Dialog (scripted) | offen | Hybrid Intent + Pools — [ADR 0009](../adr/0009-scripted-dialog-hybrid.md) |
| Persönlichkeits-Prototyp | offen | PM-0/PM-1 — [personality-model.md](personality-model.md) |
| Windows-Build | offen | Godot-Export + Installer (ohne KI-Plugin) |

## Phase 2 – MVP

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Bedürfnis-System | offen | Hunger, Müdigkeit, Schlaf (4h/10–30min, Nacht) |
| Autonome Umgebungsaktionen | offen | Bewohner isst, trinkt, nutzt Objekte selbst |
| Beziehung & Memory | offen | Vertrauen, Kernmomente, Vergessen — [personality-model.md](personality-model.md) |
| Name, Tagebuch, Konflikt | offen | FR-010–FR-012 |
| Hobbys & Interessen | offen | FR-017 — Gespräche, Einrichtung (Geschenke: später UF-001) |
| Offline-Nachhol-Dialog | offen | Eindruck von „dazwischen“ beim Start |
| Benachrichtigungen | offen | Dezent; Notfälle dringlicher |
| Speichern/Laden | offen | Spielstand, Persönlichkeit, Beziehungen, Memory |

| KI-Dialog-Plugin | offen | Ollama-Paket, downloadbar — [ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md) |

## Phase 3 – Sozial & Polish

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Besuche & Parties | offen | Eigene Figur + Spieler-Chat — [ADR 0006](../adr/0006-besuchs-system.md) |
| UI/UX | offen | Dialog-Oberfläche, Feedback, Einstellungen |
| Audio/Grafik | offen | Assets in [../../assets/](../../assets/) |
| Performance | offen | Stabile Framerate, geringer Speicherverbrauch |

## Phase 4 – Release

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Release-Checkliste | offen | [../checklists/release.md](../checklists/release.md) |
| Changelog | offen | [../../CHANGELOG.md](../../CHANGELOG.md) |
| Distribution | offen | Plattform und Veröffentlichung klären |

## Prioritäten-Regeln

1. P0-Features aus [requirements.md](requirements.md) vor P1
2. Architekturentscheidungen vor Implementierung als ADR
3. Kein Feature ohne Definition of Done: [../checklists/definition-of-done.md](../checklists/definition-of-done.md)
