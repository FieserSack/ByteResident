# 0007 – Scripted Dialog + optionales KI-Plugin

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

[ADR 0005](0005-lokales-llm-dialog.md) legt **lokales LLM** als Ziel für Dialog und Persönlichkeit fest. Für den **Einstieg** (Windows-Prototyp, [ADR 0004](0004-tech-stack-godot-windows.md)) soll das Kernspiel ohne große Downloads und ohne hohe RAM-Anforderungen starten.

Vorschlag: **scripted Persönlichkeit** im Basis-Spiel, **KI als separates, später downloadbares Plugin**.

## Entscheidung

### Zwei Dialog-Provider

Das Dialog-System nutzt ein **gemeinsames Interface** (Persönlichkeits-Schicht → Provider → Antwort):

```text
                    ┌─────────────────────┐
Anwender-Nachricht  │ Persönlichkeits-     │
        ───────────►│ Schicht (Traits,     │
                    │ Memory, Kontext)     │
                    └──────────┬──────────┘
                               │
              ┌────────────────┴────────────────┐
              ▼                                 ▼
    ┌──────────────────┐            ┌──────────────────┐
    │ Scripted Provider │            │ KI-Plugin         │
    │ (Standard, immer)   │            │ (optional)        │
    │ Regeln, Templates,  │            │ Ollama + Modell   │
    │ Trait-Mapping       │            │ downloadbar       │
    └──────────────────┘            └──────────────────┘
```

### Scripted Provider (Standard beim Start)

- Im **Basis-Installer** enthalten, **kein** LLM nötig
- Persönlichkeit über **Traits, Zufall, Memory-State** — Antworten per **Hybrid** (Intent + Pools + Fallback) — [ADR 0009](0009-scripted-dialog-hybrid.md)
- Entwicklung von Beziehung, Memory, Konflikt bleibt im **Persönlichkeitsmodell** — nicht im LLM
- Vorhersagbarer für Prototyp und Tests; geringere Hardware-Anforderungen

### KI-Plugin (optional, In-Game-Downloader)

- **Nicht** im Basis-Installer
- Download und Installation über **In-Game-Downloader** in den Einstellungen (Fortschrittsanzeige, Resume)
- Paketinhalt: Ollama (Windows portable) + empfohlenes Modell (oder Modell als zweiter Download-Schritt)
- Nach erfolgreicher Installation: „KI-Dialog aktivieren“ in Einstellungen
- Nutzt dieselbe Persönlichkeits-Schicht wie scripted — nur die **Antwortgenerierung** wechselt zum LLM
- Entspricht langfristig [ADR 0005](0005-lokales-llm-dialog.md)

### Umschaltung

- Spieler wählt in Einstellungen: **Scripted** (Standard) oder **KI** (wenn Plugin installiert)
- Ohne Plugin: nur Scripted; Einstellungen bieten **„KI-Plugin herunterladen“**
- Wechsel zur Laufzeit möglich (TBD: Neustart nötig oder sofort)

### Phasen

| Phase | Dialog |
|-------|--------|
| Prototyp / MVP | Scripted only |
| Erweiterung | KI-Plugin veröffentlichen (downloadbar) |
| Reife | KI-Plugin qualitativ auf Augenhöhe mit Vision |

## Konsequenzen

### Positiv

- **Kleiner Basis-Installer**, schneller Einstieg
- Spielbar auf **jedem Windows-PC** ohne 8–16 GB LLM-RAM
- Persönlichkeits-Schicht und Memory **einmal** bauen — zwei Provider
- KI optional = niedrigere Einstiegshürde, Vision ([ADR 0005](0005-lokales-llm-dialog.md)) bleibt erreichbar

### Negativ / Offen

- Scripted fühlt sich **weniger „menschlich“** an — akzeptiert für MVP
- Zwei Dialog-Systeme pflegen (Templates + Prompts)
- Plugin-Distribution: **In-Game-Downloader**, Versionierung mit Spiel
- Qualitätsunterschied Scripted vs. KI — Spieler-Erwartungen managen

## Abgrenzung

| In Scope | Out of Scope |
|----------|--------------|
| Scripted als Default | Cloud-LLM als Standard |
| KI-Plugin lokal (Ollama) | KI im Basis-Installer (vorerst) |
| Gleiche Persönlichkeits-Schicht | Zwei getrennte Savegames pro Modus |

## Bezug zu ADR 0005

ADR 0005 bleibt gültig für das **KI-Plugin** und die **Langzeit-Vision**. Diese ADR definiert den **Einführungspfad**: erst scripted, KI nachladbar.

## Nächste Schritte

1. `DialogueProvider`-Interface in Architektur skizzieren
2. Scripted: Hybrid Intent + Pools — [ADR 0009](0009-scripted-dialog-hybrid.md)
3. KI-Plugin: In-Game-Downloader und Einstellungs-UI (Phase 2+)
