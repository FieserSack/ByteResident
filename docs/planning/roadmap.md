# Roadmap

> Status: Planungsphase

## Phasen

```text
Phase 0 – Planung        [aktuell]
Phase 1 – Prototyp       [offen]
Phase 2 – MVP            [offen]
Phase 3 – Polish         [offen]
Phase 4 – Release        [offen]
```

## Phase 0 – Planung

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Projektstruktur | erledigt | Ordner, Docs, Cursor-Konfiguration |
| Vision & Anforderungen | in Arbeit | [vision.md](vision.md), [requirements.md](requirements.md) |
| Spielname | erledigt | [ADR 0002](../adr/0002-spielname-byte-resident.md) |
| Tech-Stack-Entscheidung | offen | ADR 0003 (geplant) |
| Architektur-Skizze | offen | [../architecture/overview.md](../architecture/overview.md) |

## Phase 1 – Prototyp

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Minimaler Spiel-Loop | offen | Charakter bewegt sich, ein Bedürfnis |
| Raum-Darstellung | offen | Einfache Wohnung visualisieren |
| Basis-Interaktion | offen | Spieler kann einen Gegenstand platzieren |

## Phase 2 – MVP

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| Bedürfnis-System | offen | Hunger, Müdigkeit, Langeweile |
| Objekt-Interaktion | offen | Charakter nutzt Möbel und Gegenstände |
| Speichern/Laden | offen | Persistenter Spielstand |

## Phase 3 – Polish

| Meilenstein | Status | Beschreibung |
|-------------|--------|--------------|
| UI/UX | offen | Menüs, Feedback, Einstellungen |
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
