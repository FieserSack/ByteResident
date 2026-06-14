# 0003 – Spieler-Interaktionsmodell

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Die ursprüngliche Vision sah indirekte Spieler-Eingriffe vor (Objekte platzieren, Essen geben). Das soll präzisiert werden: Der Bewohner soll sich wie ein eigener Mensch verhalten, den man nicht steuert, sondern mit dem man spricht.

## Entscheidung

### Keine direkte Steuerung

Der Bewohner ist **in keiner Weise direkt steuerbar**. Es gibt keine Klick-, Drag- oder Menü-Aktionen, um den Charakter oder seine Handlungen zu beeinflussen.

### Einziger Spieler-Kanal: Gespräch

Der Anwender interagiert **ausschließlich über natürliche Sprache** – wie mit einem anderen Menschen:

- Fragen stellen
- Bitten äußern
- Anregungen geben
- Smalltalk führen

### Autonome Umgebungsaktionen

Essen, Trinken, Bewegen, Objekte nutzen und andere Handlungen in der Wohnung führt der Bewohner **selbstständig** aus. Der Anwender kann darüber sprechen oder darum bitten, aber nicht die Aktion direkt auslösen.

### Emergente Persönlichkeit

Jeder Bewohner startet mit einer **zufälligen Grundpersönlichkeit** und entwickelt diese im Verlauf **auf Basis der Gespräche mit dem Anwender** weiter. Tonfall, Vorlieben, Grenzen und Reaktionsmuster entstehen aus der Interaktionshistorie.

## Konsequenzen

### Positiv

- Einzigartiges, persönliches Spielerlebnis pro Bewohner und Anwender
- Starke Immersion: Beziehung statt Steuerung
- Klare Design-Grenze: kein Vermischen von Sim-UI und Dialog

### Negativ / Offen

- **Dialog-System** über lokales LLM – siehe [ADR 0005](0005-lokales-llm-dialog.md)
- Persönlichkeitsmodell und Speicherung der Interaktionshistorie zu definieren
- Balance: Bewohner muss autonom bleiben, darf Bitten nicht blind ausführen
- Barrierefreiheit für reine Text-Eingabe zu klären (Eingabehilfen, Spracheingabe)

## Abgrenzung

| Erlaubt | Nicht vorgesehen |
|---------|------------------|
| Sprechen, fragen, bitten | Charakter direkt bewegen |
| Beobachten | Essen/Trinken per Klick geben |
| | Möbel per UI platzieren |
| | Aktionsmenüs für den Bewohner |
