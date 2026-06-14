# 0009 – Scripted Dialog: Hybrid (Intent + Pools)

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Der **Scripted Provider** ist Standard im Basis-Spiel ([ADR 0007](0007-scripted-dialog-ki-plugin.md)). Es war offen, wie Anwender-Nachrichten in Antworten übersetzt werden — siehe [scripted-dialog-design.md](../planning/scripted-dialog-design.md).

**Geltungsbereich:** Nur der **Scripted Provider**. Das **KI-Plugin** ([ADR 0005](0005-lokales-llm-dialog.md)) nutzt weiterhin das lokale LLM; diese ADR betrifft es nicht.

## Entscheidung

### Ansatz C – Hybrid

```text
Anwender-Nachricht
       ↓
1. Intent erkennen (Keywords, einfache Muster)
2. Intent bekannt? → Antwort-Pool wählen (3–8 Varianten)
3. Kein Intent?     → Fallback-Pool (persönlichkeitsabhängig)
4. Traits + Beziehung + Memory modifizieren Ton und Inhalt (Slots)
       ↓
Bewohner-Antwort
```

### Komponenten

| Komponente | Rolle |
|------------|-------|
| **Intent-Erkennung** | Leichtgewichtig: Keywords, Synonyme, einfache Muster (Deutsch) |
| **Antwort-Pools** | Pro Intent mehrere Varianten; Qualität der Texte kontrollierbar |
| **Slots** | `{name}`, Bedürfnis, Memory-Snippet, Beziehungsstand |
| **Trait-Filter** | Pools/Varianten nach Persönlichkeit filtern oder umschreiben |
| **Fallback** | Immer verfügbar bei unbekannter Eingabe — nie Stille |

### Prototyp-Intents (Phase 1, Entwurf)

| Intent | Beispiel-Auslöser |
|--------|-------------------|
| `GREETING` | Hallo, Hi, Guten Tag |
| `ASK_FOOD` | Hunger, essen, etwas zu beißen |
| `ASK_SLEEP` | Müde, schlafen, hinlegen |
| `ASK_NAME` | Name, wie heißt du, nennen |
| `SMALLTALK` | Wie geht's, was machst du |
| `REQUEST` | Kannst du, bitte, würdest du |
| `CONFLICT` | (kontextabhängig aus Verlauf) |
| `ASK_DIARY` | Tagebuch, was hast du aufgeschrieben |
| `UNKNOWN` | Fallback |

Liste wird in der Implementierung verfeinert.

### Bezug zur Persönlichkeits-Schicht

Intent und Antwort sind **Eingabe/Ausgabe** des Scripted Providers. Traits, Memory und Beziehung leben in der **Persönlichkeits-Schicht** ([personality-model.md](../planning/personality-model.md)) — gleiche Schicht wie beim KI-Plugin.

### Übergang zum KI-Plugin

Erkannte Intents und Kontext (Traits, Memory) können später als **strukturierter Prompt** ans LLM übergeben werden — Hybrid-Architektur bleibt nutzbar.

## Konsequenzen

### Positiv

- Gute Dialog-Qualität für MVP ohne LLM
- Unerwartete Eingaben über Fallback abgefangen
- Skalierbar durch neue Intents + Pools
- Klar getrennt vom KI-Plugin

### Negativ

- Intent-Listen und Pools pflegen (DE-Synonyme)
- Kein echtes NLU — Paraphrasen ohne Keywords → Fallback
- Zwei Ebenen (Intent + Pool) zu implementieren

## Abgrenzung

| Scripted (diese ADR) | KI-Plugin (ADR 0005) |
|----------------------|----------------------|
| Keywords + Pools | LLM-Generierung |
| Vorhersagbar, schnell | Flexibler, langsamer |
| Im Basis-Installer | Download via In-Game-Downloader |

## Nächste Schritte

1. Intent-Definitionen und Pool-Struktur in `src/dialogue/` anlegen
2. Fallback-Pools pro Trait-Archetyp skizzieren
3. Prototyp mit GREETING + ASK_FOOD + UNKNOWN testen
