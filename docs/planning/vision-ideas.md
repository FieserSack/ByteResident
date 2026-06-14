# Vision – Ideensammlung

> Lebendiges Dokument: Ideen sammeln, bewerten, in die [Vision](vision.md) übernehmen oder verwerfen.

## Legende

| Status | Bedeutung |
|--------|-----------|
| 💡 Idee | Erste Notiz, unbewertet |
| 🔍 Prüfen | Potenzial, muss zum Spielprinzip passen |
| ✅ Übernommen | In Vision oder Anforderungen aufgenommen |
| 📅 Später | In [upcoming-features.md](upcoming-features.md) vorgemerkt |
| ❌ Verworfen | Passt nicht (mit kurzer Begründung) |

## Bewohner & Persönlichkeit

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Name durch Gespräch** | Start namenlos; Vorschläge annehmen/ablehnen oder eigener Name |
| ✅ | **Hobbys entwickeln sich** | Gespräche, Einrichtung, wiederholte Themen (Geschenke: später UF-001) |
| 📅 | **Geschenkmechanik** | Für später — [upcoming-features.md](upcoming-features.md#uf-001--geschenkmechanik) |
| ✅ | **Stimmungen ohne HUD** | Nur Verhalten und Dialog-Ton |
| ✅ | **Tagebuch des Bewohners** | Lesen nur wenn Beziehung passt |
| ✅ | **Vergessen** | Kernmomente bleiben; Kleinigkeiten verblassen |
| 💡 | **Grenzen setzen** | Bewohner kann Themen abblocken oder „brauche Zeit für mich“ sagen |

## Beziehung zum Anwender

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Vertrauen wächst langsam** | Tiefe kommt mit Zeit; Tagebuch, Name, intime Themen später |
| ✅ | **Reaktion auf Abwesenheit** | Offline kein Tick; beim Wiedereinstieg Gespräch über „dazwischen“ |
| ✅ | **Bitten nicht blind folgen** | Persönlichkeit + Situation entscheiden |
| ✅ | **Erinnerungen an Kernmomente** | Langzeit-Memory; Kleines vergessen |
| ✅ | **Konflikte & Versöhnung** | Ohne Beziehungsbalken |
| ✅ | **Innige Freundschaft als Ziel** | Langzeitmotivation |

## Bewohner unter Bewohnern

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Besuche per Code** | Einladung, Freundschaft, öffentlicher Zugang |
| ✅ | **Parties** | Anwendungsfall für öffentlichen Code |
| ✅ | **Gleiche Beziehungsregeln** | Vertrauen, Memory, Konflikt auch zwischen Figuren |
| ✅ | **Einfluss nur über eigene Figur** | Beim Besuch/Party kein Dialog mit fremder Spielfigur |
| ✅ | **Spieler-zu-Spieler-Chat** | Optional beim Besuch; bei Party gemeinsamer Chat |

## Wohnung & Welt

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Querschnitts-Ansicht** | Retro, von der Seite |
| 💡 | **Bewohner richtet ein** | Durch eigene Entscheidungen, nicht Anwender-Klicks |
| 💡 | **Mehr Räume über Zeit** | Wachstum durch Beziehung / Dialog |
| ❌ | **Fenster zur Außenwelt** | Verworfen – kein Wetter, keine Außenansicht |
| 💡 | **Objekte mit Geschichte** | Verknüpft mit Memory |

## PC als Spielwelt

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Mitbewohner im PC** | Untertitel „Untermieter im PC“ |
| ✅ | **Echter Tagesrhythmus** | Tag/Nacht real; max. 4h wach → 10–30 Min Schlaf tagsüber |
| ✅ | **Nachtschlaf** | Ganze Nacht durchschlafen; Unterbrechungen möglich |
| ✅ | **Kein Offline-Tick** | Eindruck von Aktivität nur beim Wiedereinstieg (Dialog) |
| ✅ | **Dezente Benachrichtigung** | Notfälle dringlicher |
| 💡 | **PC-Zustand bemerken** | Späte Nacht, lange Abwesenheit – Datenschutz prüfen |

## Atmosphäre & Stil

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Retro-Ästhetik** | Querschnitt, 80er-Hommage, eigene Identität |
| 💡 | **Warm, nicht kitschig** | Gemütlich, nostalgisch |
| 💡 | **Text als zentrales Element** | Dialog im Fokus |
| 💡 | **Leise Soundkulisse** | Optional abschaltbar |

## Langzeit & Wiederspielwert

| Status | Idee | Notizen |
|--------|------|---------|
| ✅ | **Jeder Bewohner einzigartig** | Zufall + Gespräche + andere Bewohner |
| ✅ | **Kein „Gewinnen“** | Beziehung ist das Ziel |
| ✅ | **Spielzeit aus Beziehung** | Persönlichkeit, Zufall, Anwender, andere Figuren |
| 💡 | **Neuer Bewohner** | Nach Auszug / Neustart (TBD) |

## Bereits in der Vision verankert

| Status | Idee | Referenz |
|--------|------|----------|
| ✅ | Nur Dialog, keine Steuerung | [ADR 0003](../adr/0003-spieler-interaktionsmodell.md) |
| ✅ | Emergente Persönlichkeit | [vision.md](vision.md), [personality-model.md](personality-model.md) |
| ✅ | Lokales LLM | [ADR 0005](../adr/0005-lokales-llm-dialog.md) |
| ✅ | Besuche & Parties | [ADR 0006](../adr/0006-besuchs-system.md), [vision.md](vision.md) |
| ✅ | Keine Monetarisierung | [vision.md](vision.md) |

## Verworfen / Nicht-Ziele

| Status | Idee | Begründung |
|--------|------|------------|
| ❌ | Direkt Essen geben / Möbel platzieren | Dialog-only ([ADR 0003](../adr/0003-spieler-interaktionsmodell.md)) |
| ❌ | Horror / Survival | [vision.md](vision.md) |
| ❌ | Offenes Multiplayer / globale Lobby | Nur gezielte Besuche per Code |
| ❌ | Dialog mit fremder Spielfigur | Nur eigene Figur; fremde werden beobachtet |
| ❌ | Offline-Simulation (App zu) | Nur Nachhol-Dialog beim Start |
| ❌ | Fenster / Wetter / Außenwelt | Keine Fenster-Ansicht, kein Wetter-System |

## Neue Ideen (Vorlage)

```markdown
| 💡 | **Titel der Idee** | Kurze Beschreibung, offene Fragen |
```

---

*Letzte Erweiterung: Vision-Workshop – Beziehungen, Besuche, Tagesrhythmus, Memory.*
