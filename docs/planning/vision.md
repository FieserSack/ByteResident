# Vision

> Status: Planungsphase

## Spielname

**Byte Resident** – *Dein kleiner Untermieter im PC*

## Projektziel

Byte Resident ist ein digitales Lebenssimulationsspiel als **Spiritual Successor** klassischer 80er-Computersimulationen: Ein kleiner autonomer Bewohner lebt in einer Wohnung auf deinem PC, geht eigenständig seinem Tagesablauf nach und entwickelt im Gespräch mit dir eine **eigene Persönlichkeit** – bis hin zu einer innigen Freundschaft.

Inspiriert von Konzepten wie *Little Computer People* (1985) – **kein offizielles Remake**, eigene Marke, eigene Darstellung und Mechanik.

## Spielprinzip

```text
Bewohner (autonom)          Anwender (nur Dialog)
─────────────────          ─────────────────────
Bedürfnisse, Tagesablauf   Fragen, Bitten, Smalltalk
Handlungen in der Wohnung  Keine direkte Steuerung
Eigene Persönlichkeit      Prägt Persönlichkeit mit
Beziehungen zu anderen      Besuche per Code (später)
```

Der Bewohner ist **kein Avatar**. Er isst, trinkt, bewegt sich und nutzt Objekte **von selbst**. Du kannst mit ihm reden – wie mit einem anderen Menschen – aber ihn nicht steuern, füttern oder per UI befehligen.

Jeder Bewohner beginnt **ohne Namen** mit einer **zufälligen Grundpersönlichkeit** und formt sich im Laufe der Zeit durch Gespräche: Tonfall, Vertrauen, Erinnerungen, Konflikte, Versöhnung.

## Beziehungen

### Anwender ↔ Bewohner

- **Vertrauen und Nähe entwickeln sich langsam** – nicht alles ist vom ersten Tag an möglich
- **Kernmomente** bleiben erinnert; **Kleinigkeiten verblassen** über die Zeit – so menschlich wie möglich
- **Konflikte und Versöhnung** sind möglich, ohne sichtbare Beziehungsbalken
- **Langzeitmotivation:** eine persönliche Beziehung aufbauen, z. B. bis zu inniger Freundschaft
- **Tagebuch:** der Bewohner führt Tagebuch; der Anwender darf es lesen, **wenn die Beziehung das zulässt**
- **Spielzeit** entsteht aus Persönlichkeit, Zufall und der Beziehung zum Anwender – nicht aus vorgegebenen Quests

### Bewohner ↔ Bewohner (Besuche)

- Der eigene Bewohner kann **Bewohner anderer Spieler besuchen** – z. B. um eine **Party** zu veranstalten
- Zugang über **Einladungscode**, **Freundschaftscode** oder **öffentlichen Zugangscode** (o. Ä.)
- **Gleiche Beziehungsregeln** zwischen den Spielfiguren: Vertrauen, Erinnerung, Vergessen, Konflikt, Versöhnung
- Die **Spielfiguren** interagieren untereinander **autonom** (nicht steuerbar)

### Anwender beim Besuch & bei Parties

```text
Einfluss auf eigene Figur     →  nur Dialog mit der EIGENEN Spielfigur
Kontakt zum anderen Spieler  →  optional: Chat Spieler ↔ Spieler
Fremde Spielfigur            →  kein direkter Dialog des Anwenders
```

- Jeder Spieler kann **nur mit der eigenen Spielfigur** sprechen (wie zu Hause)
- Alternativ bzw. zusätzlich: **Chat mit dem anderen Spieler** (menschlich, nicht mit dessen Figur)
- Bei einer **Party:** gemeinsamer **Spieler-Chat**; Einfluss auf das Geschehen weiterhin **nur** über Gespräche mit der **eigenen** Figur
- Fremde Bewohner werden **beobachtet**, nicht direkt angesprochen

## Hobbys & Interessen

Hobbys **entwickeln sich** – nicht von Anfang an festgelegt:

- aus **Gesprächen** und wiederkehrenden Themen
- aus **Möglichkeiten im Spiel** (vorhandene Einrichtung, Objekte in der Wohnung)
- **Geschenke:** bewusst **für später** vorgemerkt → [UF-001](upcoming-features.md#uf-001--geschenkmechanik)
- sichtbar in **autonomen Aktionen** (z. B. oft lesen, musizieren, basteln)

## Name

Der Bewohner startet **namenlos**. Ein Name entsteht **nur durch Gespräch**:

- Anwender kann Namen vorschlagen
- Bewohner entscheidet **selbst** – abhängig von Beziehung und Persönlichkeit
- Nimmt Vorschläge an, lehnt ab oder **gibt sich einen eigenen Namen**, wenn keine Einigung entsteht

## Tagesrhythmus & Schlaf

- **Tag und Nacht folgen der echten Uhrzeit**
- **Nachts** schläft der Bewohner die ganze Nacht durch; **Unterbrechungen** sind möglich
- **Tagsüber:** spätestens nach **4 Stunden Wachheit** braucht er **10–30 Minuten Schlaf**; Müdigkeit steigt bis dahin
- Stimmung und Bedürfnisse zeigen sich **nur im Verhalten und Ton** – keine Laune- oder Beziehungsbalken

## Offline-Verhalten

Das Spiel **simuliert offline nicht weiter** (kein Hintergrund-Tick ohne laufende Anwendung). Beim Wiedereinstieg soll es sich aber anfühlen, als hätte der Bewohner **in der Zwischenzeit etwas erlebt** – vor allem **durch Gespräche** beim nächsten Kontakt („Während du weg warst …“).

## Benachrichtigungen

- **Dezent** im Alltag – der Bewohner möchte etwas erzählen oder melden
- **Dringender** bei **Notfällen** – z. B. **kein Essen mehr** und die Figur ist **hungrig**
- Frequenz abhängig von Persönlichkeit, Beziehung und Situation – nicht nervig

## Darstellung & Atmosphäre

- **Retro-Querschnitts-Ansicht** der Wohnung
- Warm, nostalgisch, **nicht kitschig** – kein Horror
- Text und Dialog im Zentrum; Grafik unterstützt

## Zielgruppe

- Retro- und Indie-Spiel-Fans
- Spieler, die entspannte Beobachtungs- und Betreuer-Spiele mögen
- Spieler, die Beziehungen zu autonomen Charakteren über Dialog aufbauen mögen
- Spieler, die soziale Begegnungen zwischen Bewohnern schätzen (Besuche, Parties)
- [ ] Plattformen festlegen (Desktop, Web, Mobile) → **Start: Windows** ([ADR 0004](../adr/0004-tech-stack-godot-windows.md))

## Kernfeatures (Entwurf)

| Priorität | Feature | Beschreibung |
|-----------|---------|--------------|
| P0 | Autonomer Bewohner | Figur mit Bedürfnissen und eigenem Tagesablauf; nicht steuerbar |
| P0 | Wohnungs-Simulation | Interaktive Räume, Retro-Querschnitts-Ansicht |
| P0 | Dialog-Interaktion | Anwender kommuniziert per Sprache; **Start: scripted**, KI optional ([ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md)) |
| P0 | Emergente Persönlichkeit | Zufälliger Start, Entwicklung durch Gespräche |
| P0 | Beziehung & Memory | Vertrauen, Kernmomente, Vergessen, Konflikt, Versöhnung |
| P1 | Name durch Gespräch | Namenlos starten, Name emergiert im Dialog |
| P1 | Tagebuch | Bewohner schreibt; Lesen abhängig von Beziehung |
| P1 | Tagesrhythmus & Schlaf | Echte Uhrzeit, Müdigkeit, Nickerchen, Nachtschlaf |
| P1 | Offline-Nachhol-Dialog | Eindruck von „dazwischen passiert“ beim Wiedereinstieg |
| P1 | Hobbys & Interessen | Entwickeln sich aus Gesprächen und Spielmöglichkeiten |
| P1 | Benachrichtigungen | Dezent; Notfälle dringlicher |
| P2 | Autonome Umgebungsaktionen | Essen, Trinken, Objekte nutzen |
| P2 | Persistenz | Spielstand, Persönlichkeit, Beziehungen, Memory |
| P3 | Besuche & Parties | Bewohner besucht andere; Spieler-Chat; Einfluss nur über eigene Figur |
| P3 | Erweiterungen | Events, Dekoration, weitere Räume |
| — | Geschenkmechanik | **Später** — [UF-001](upcoming-features.md#uf-001--geschenkmechanik) |

## Nicht-Ziele (vorerst)

- Direkte Steuerung des Bewohners (kein Klicken, Ziehen, Aktionsmenüs)
- UI-Aktionen wie „Essen geben“ oder „Möbel platzieren“
- Sichtbare Beziehungs- oder Stimmungsbalken
- Offenes Multiplayer, globale Lobby, Echtzeit-PvP
- Direkter Dialog des Anwenders mit **fremden** Spielfiguren
- Offline-Simulation im Hintergrund (App geschlossen)
- Fenster, Außenwelt, Wetter-System
- Offizielles Remake oder Lizenzierung von *Little Computer People*
- Monetarisierung / In-App-Käufe
- Horror- oder Survival-Mechaniken

## Erfolgskriterien

- [ ] Spielbarer Prototyp mit mindestens einem autonomen Bewohner
- [ ] Anwender kann ausschließlich per Dialog interagieren
- [ ] Bewohner zeigt erkennbare, sich entwickelnde Persönlichkeit und Beziehung
- [ ] Erinnerungen wirken menschlich (Kernmomente bleiben, Kleines verblasst)
- [ ] Klare, verständliche Spielmechanik ohne Tutorial-Pflicht
- [ ] Dokumentierte Architektur und nachvollziehbare Entwicklungsentscheidungen

## Entscheidungen

| Thema | Status | Referenz |
|-------|--------|----------|
| Spielname & Positionierung | Akzeptiert | [ADR 0002](../adr/0002-spielname-byte-resident.md) |
| Spieler-Interaktionsmodell | Akzeptiert | [ADR 0003](../adr/0003-spieler-interaktionsmodell.md) |
| Dialog-System (lokales LLM) | Akzeptiert | [ADR 0005](../adr/0005-lokales-llm-dialog.md) (als KI-Plugin) |
| Dialog Einführung (scripted) | Akzeptiert | [ADR 0007](../adr/0007-scripted-dialog-ki-plugin.md), [0009](../adr/0009-scripted-dialog-hybrid.md) |
| Tech-Stack / Engine | Akzeptiert | [ADR 0004](../adr/0004-tech-stack-godot-windows.md) |
| Zielplattform (Start) | Akzeptiert | Windows only — [ADR 0004](../adr/0004-tech-stack-godot-windows.md) |
| Besuchs-System (sozial) | Vorgeschlagen | [ADR 0006](../adr/0006-besuchs-system.md) |
| Persönlichkeitsmodell | In Arbeit | [personality-model.md](personality-model.md) |
| Zielplattform (macOS/Linux) | Offen | Roadmap Phase 4 |

## Weiterführend

- [Ideensammlung](vision-ideas.md) – Vision-Ideen sammeln und bewerten
- [Persönlichkeitsmodell](personality-model.md) – eigener Entwicklungsstrang
- [Kommende Features](upcoming-features.md) – Backlog für spätere Ausarbeitung (z. B. Geschenke)
- [Scripted Dialog – Design](scripted-dialog-design.md) – Intent vs. Pools (Diskussion)
