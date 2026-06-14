# 0005 – Lokales LLM für Dialog und Persönlichkeit

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Laut [ADR 0003](0003-spieler-interaktionsmodell.md) interagiert der Anwender ausschließlich per Dialog; die Persönlichkeit des Bewohners entwickelt sich durch Gespräche. Dafür braucht das Spiel ein Dialog-System.

Optionen standen zur Debatte:

| Ansatz | Vorteile | Nachteile |
|--------|----------|-----------|
| Regelbasiert | Vorhersagbar, leichtgewichtig | Starr, wenig „menschlich“ |
| Cloud-LLM (API) | Hohe Qualität, kein RAM beim Spieler | Kosten, Internet, Datenschutz |
| **Lokales LLM** | Offline, privat, 0 € laufend | Hardware-Anforderungen, Modellqualität begrenzt |

Das Spielkonzept „Untermieter im PC“ spricht für einen Bewohner, der **lokal** existiert – ohne Cloud-Abhängigkeit.

## Entscheidung

### Lokales LLM als Dialog- und Persönlichkeits-Engine

Dialog und Persönlichkeit werden über ein **lokal laufendes Open-Source-LLM** realisiert. Keine Cloud-API als Standardweg.

### Laufzeit: Ollama (primär)

**[Ollama](https://ollama.com)** ist die primäre Laufzeit für lokale Inferenz:

- Einfache Modellverwaltung (`ollama pull`, `ollama run`)
- HTTP-API kompatibel mit gängigen LLM-Clients
- Plattformübergreifend (Windows, macOS, Linux)
- Engine-unabhängig: Spiel spricht per API, unabhängig von Godot/Unity/Web

**Alternative:** Direkte Einbindung via **llama.cpp** (GGUF), falls Ollama zu schwergewichtig ist oder Engine-native Integration nötig wird.

### Modellwahl (Startempfehlung)

Konkretes Modell wird im Prototyp validiert. Kandidaten:

| Modell | Größe | Lizenz | Ziel-Hardware |
|--------|-------|--------|---------------|
| **Qwen3 4B** | Klein | Apache 2.0 | 16 GB RAM (empfohlen) |
| **Llama 3.2 3B** | Klein | Llama License | 8–16 GB RAM |
| **Phi-4-mini** | 3.8B | MIT | 8–16 GB RAM |

Entscheidung über das konkrete Modell erfolgt in Phase 1 (Prototyp), nicht in dieser ADR.

### Architektur: LLM + Persönlichkeits-Schicht

Das LLM allein reicht nicht. Darüber liegt eine **Persönlichkeits-Schicht**:

```text
Anwender-Nachricht
       ↓
┌──────────────────────────┐
│  Persönlichkeits-Schicht  │
│  - Zufällige Grundtraits  │
│  - Entwickelter Zustand     │
│  - Gesprächs-Memory         │
│  - Aktueller Kontext        │
│    (Bedürfnisse, Aktion)    │
└──────────────────────────┘
       ↓ System-Prompt + Kontext
┌──────────────────────────┐
│  Lokales LLM (Ollama)     │
└──────────────────────────┘
       ↓
Bewohner-Antwort
       ↓
Persönlichkeits-Update (Traits, Memory)
```

**Das LLM generiert Antworten.** Die **Persönlichkeits-Schicht** steuert, *wer* der Bewohner ist und *was* er sich merkt – unabhängig vom Modell.

### Abgrenzung

| In Scope | Out of Scope (vorerst) |
|----------|------------------------|
| Lokales LLM für Dialog | Cloud-LLM als Standard |
| Persönlichkeit via Prompt + State | Fine-Tuning eigener Modelle |
| Gesprächs-Memory (Session + persistent) | Sprach-Ein-/Ausgabe (STT/TTS) |
| Ollama als Laufzeit | Modell mit Spiel ausliefern (TBD) |

## Konsequenzen

### Positiv

- **0 €** laufende Inferenzkosten
- **Offline-fähig** – Bewohner lebt ohne Internet
- **Datenschutz** – Gespräche verlassen den PC nicht
- Passt zum Konzept „Untermieter im PC“
- Ollama entkoppelt Dialog von der Engine-Entscheidung (ADR 0004)

### Negativ / Offen

- **Hardware-Anforderungen** beim Spieler (RAM 8–16 GB, GPU optional aber empfohlen)
- **Antwortlatenz** – lokale kleine Modelle brauchen Sekunden, nicht Millisekunden
- **Modellverteilung** – Spieler installiert Ollama + Modell selbst, oder Spiel liefert es mit (TBD)
- **Qualität** – 3B–4B-Modelle sind für nuancierte Dialoge begrenzt; muss im Prototyp getestet werden
- **Mehrsprachigkeit** – Modell muss Deutsch zuverlässig beherrschen (Qwen3/Llama gut geeignet)

## Referenz-Hardware (Entwurf)

| Profil | RAM | Erwartung |
|--------|-----|-----------|
| Minimum | 8 GB | 1B–3B-Modell, langsamere Antworten (~5–15 s) |
| Empfohlen | 16 GB | 3B–4B-Modell, akzeptable Antworten (~2–8 s) |
| Optimal | 16 GB + GPU | 4B+ mit GPU-Beschleunigung (~1–3 s) |

Wird in Phase 1 validiert und in NFR-001 übernommen.

## Bezug zu späteren ADRs

Langfristig gilt weiterhin lokales LLM für Dialog — siehe [ADR 0005](0005-lokales-llm-dialog.md).

**Einführungspfad (MVP):** Kernspiel startet mit **scripted Dialog**; lokales LLM als **optionales, downloadbares KI-Plugin** — [ADR 0007](0007-scripted-dialog-ki-plugin.md).

## Nächste Schritte

1. Ollama im Entwicklungs-Setup dokumentieren ([getting-started.md](../guides/getting-started.md))
2. Prototyp: Dialog mit einem Kandidaten-Modell testen
3. Datenmodell für Persönlichkeits-Traits und Memory skizzieren
4. Modellwahl nach Prototyp-Ergebnis festlegen (ggf. ADR-Ergänzung)
