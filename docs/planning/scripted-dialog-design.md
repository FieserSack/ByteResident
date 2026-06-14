# Scripted Dialog – Designoptionen

> Status: **Entschieden** — [ADR 0009](../adr/0009-scripted-dialog-hybrid.md) (Ansatz C, nur Scripted Provider)
> Verwandt: [ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md), [personality-model.md](personality-model.md)

Für den **Scripted Provider** (Standard bis KI-Plugin aktiv ist): Wie werden Anwender-Nachrichten in Bewohner-Antworten übersetzt?

## Drei Ansätze

### A – Feste Antwort-Pools

Vorgefertigte Zeilen pro Situation; Auswahl per Zufall oder Trait.

```text
Situation: Bewohner ist müde
Pool: ["*gähnt* Ich bin platt.", "Könnt ich kurz hinlegen?", …]
→ Zufall + Trait-Filter (z. B. höflich vs. direkt)
```

| Pro | Contra |
|-----|--------|
| Volle Kontrolle über Textqualität (Deutsch, Ton) | Unerwartete Eingaben fallen durch |
| Einfach zu testen | Viele Pools nötig → Wartungsaufwand |
| Vorhersagbar, kein „Dumm-Erkennen“ | Wirkt schnell repetitiv |
| Gut für feste Events (Hunger-Notfall, Name) | Skaliert schlecht mit Themen-Vielfalt |

---

### B – Intent-Erkennung (Keywords → Reaktion)

Nachricht wird auf **Absicht** gemappt; Intent + Traits + Beziehung → Antwort-Template.

```text
Eingabe: "Hast du Hunger? Willst du was essen?"
Keywords: hunger, essen → Intent: ASK_FOOD
→ Template: "{name}, ich hab {hunger_level} Hunger. {food_reaction}"
```

| Pro | Contra |
|-----|--------|
| Versteht viele Formulierungen **eines** Themas | Paraphrasen ohne Keywords scheitern |
| Neue Themen = neuer Intent (skalierbar) | Falsch erkannte Intents wirken dumm |
| Weniger Zeilen als reine Pools | Keyword-Listen pflegen (DE-Synonyme) |
| Passt zu Persönlichkeits-Schicht | Braucht **Fallback** bei „unbekannt“ |

---

### C – Hybrid (empfohlen für Byte Resident)

**Intent-Erkennung (leichtgewichtig)** + **Antwort-Pools pro Intent** + **Trait-Modifikation** + **Fallback**.

```text
1. Intent erkennen (Keywords, einfache Muster)
2. Kein Intent? → Fallback-Pool (neugierig / verwirrt / abweisend — je nach Trait)
3. Intent bekannt? → Pool wählen, Slots füllen ({name}, Memory-Snippet)
4. Persönlichkeit filtert Ton und Ob Anwender überhaupt antwortet bekommt
```

| Pro | Contra |
|-----|--------|
| Balance aus Kontrolle und Flexibilität | Zwei Systeme (Intents + Pools) |
| Gute MVP-Qualität ohne LLM | Immer noch kein echtes NLU |
| Fallback verhindert „Stille“ | Intent-Liste muss wachsen |
| Gleiche Architektur später für KI-Prompt-Kontext nutzbar | Etwas mehr Implementierung als nur Pools |

---

## Vergleich kurz

| Kriterium | A Pools | B Intent | C Hybrid |
|-----------|---------|----------|----------|
| MVP-Aufwand | Niedrig | Mittel | Mittel |
| Dialog-Qualität | Mittel | Mittel–hoch | Hoch (für scripted) |
| Unerwartete Eingaben | Schlecht | Mittel | Mittel (Fallback) |
| Wartung | Viele Texte | Intent-Liste | Beides |
| Übergang zu KI-Plugin | OK | Gut (Intents = Prompt-Hints) | **Sehr gut** |

## Empfehlung (Diskussionsvorschlag)

**Ansatz C – Hybrid** für Phase 1:

1. **Intents** für P0-Themen: Begrüßung, Hunger/Essen, Schlaf, Name, Smalltalk, Bitten, Konflikt, Tagebuch-Anfrage
2. **Pools** pro Intent mit 3–8 Varianten, gefiltert nach Traits
3. **Fallback** immer persönlichkeitsabhängig („Hmm?“, „Darüber will ich nicht reden.“, „Erzähl mir mehr.“)
4. Intents später als **Struktur für KI-Prompts** wiederverwenden (gleicher Kontext, andere Formulierung)

## Offene Entscheidung

- [x] Ansatz C (Hybrid) — [ADR 0009](../adr/0009-scripted-dialog-hybrid.md)
- [ ] Intent-Liste für Prototyp in Implementierung verfeinern
- [ ] Deutsch: Keyword-Listen + Synonyme pflegen
