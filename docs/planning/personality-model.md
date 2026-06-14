# Persönlichkeitsmodell

> Status: Planungsphase – eigener Entwicklungsstrang  
> Verwandt: [Vision](vision.md), [ADR 0003](../adr/0003-spieler-interaktionsmodell.md), [ADR 0005](../adr/0005-lokales-llm-dialog.md)

Das Persönlichkeitsmodell ist ein **eigenständiger Entwicklungsstrang** – unabhängig von Engine, Rendering und Wohnungs-Simulation. Es definiert, *wer* der Bewohner ist, wie er startet und wie er sich durch Gespräche verändert.

## Abgrenzung zum LLM

| Persönlichkeits-Schicht (dieses Dokument) | Lokales LLM ([ADR 0005](../adr/0005-lokales-llm-dialog.md)) |
|-------------------------------------------|--------------------------------------------------------------|
| Traits, Werte, Grenzen | Formuliert Antworten in natürlicher Sprache |
| Zufällige Initialisierung | Verarbeitet den zusammengesetzten Prompt |
| Memory & Entwicklung über Zeit | Kein dauerhaftes „Wissen“ ohne unsere Schicht |
| Entscheidet: Bitten annehmen/ablehnen | Generiert Begründungen im Charakter-Ton |

Das LLM ist die **Stimme**. Das Persönlichkeitsmodell ist das **Charakterblatt**.

## Entwicklungsphasen

```text
PM-0 Konzept        [aktuell]
PM-1 Grundtraits    [offen]
PM-2 Memory         [offen]
PM-3 Entwicklung    [offen]
PM-4 Integration    [offen]
PM-5 Persistenz     [offen]
```

### PM-0 – Konzept

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Trait-Dimensionen definieren | offen | Welche Eigenschaften beschreiben einen Bewohner? |
| Zufalls-Generierung skizzieren | offen | Wie entsteht die Startpersönlichkeit? |
| Entwicklungsregeln entwerfen | offen | Was kann sich ändern, was bleibt stabil? |
| Abgrenzung LLM vs. State | offen | Was lebt im Prompt, was im Datenmodell? |

### PM-1 – Grundtraits

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Trait-Schema | offen | Datenstruktur für Eigenschaften (z. B. JSON) |
| Zufallsgenerator | offen | Pro Neustart einzigartige Kombination |
| Prompt-Mapping | offen | Traits → System-Prompt-Abschnitte |
| Sichtbarkeit für Anwender | offen | Zeigt der Bewohner seine Persönlichkeit explizit oder nur im Verhalten? |

### PM-2 – Memory

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Kurzzeit-Memory | offen | Aktuelle Gesprächsrunde |
| Langzeit-Memory | offen | Wichtige Momente, Präferenzen, Konflikte |
| Memory-Kompression | offen | Alte Gespräche verdichten (Token-Limit des LLM) |
| Vergessen | offen | Kleinigkeiten verblassen; Kernmomente bleiben (siehe unten) |
| Beziehungsmodell | offen | Anwender ↔ Bewohner und Bewohner ↔ Bewohner |
| Namens-Flow | offen | Start namenlos; Entscheidung im Dialog |

### PM-3 – Entwicklung

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Einfluss-Analyse | offen | Gespräch → welche Traits ändern sich? |
| Stabilität | offen | Kernpersönlichkeit bleibt erkennbar |
| Verhalten-Kopplung | offen | Traits und Hobbys beeinflussen autonome Aktionen |
| Hobby-Entwicklung | offen | Gespräche, Einrichtung → Interessen (Geschenke: später) |
| Konflikt & Versöhnung | offen | Zustände ohne sichtbare Balken |
| Tagebuch-Zugang | offen | Leserecht abhängig von Beziehungsstufe |

### PM-4 – Integration

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Prompt-Builder | offen | Traits + Memory + Kontext → Template oder LLM-Prompt |
| Antwort-Nachverarbeitung | offen | Optional: Trait-Updates aus Antwort ableiten |
| Kontext aus Simulation | offen | Bedürfnisse, aktuelle Aktion, Tageszeit einbeziehen |
| Prototyp-Test | offen | Fühlt sich der Bewohner konsistent an? |

### PM-5 – Persistenz

| Aufgabe | Status | Beschreibung |
|---------|--------|--------------|
| Speicherformat | offen | Traits + Memory serialisieren |
| Migration | offen | Schema-Änderungen ohne Datenverlust |
| Export/Import | offen | Optional: Bewohner mitnehmen (TBD) |

## Trait-Dimensionen (Entwurf)

> Noch nicht final – Ideensammlung für PM-0

| Dimension | Beschreibung | Beispiel-Spektrum |
|-----------|--------------|-------------------|
| Geselligkeit | Wie offen im Dialog | zurückhaltend ↔ gesprächig |
| Sturheit | Reaktion auf Bitten | gefällig ↔ eigenwillig |
| Neugier | Exploration, Fragen | gleichgültig ↔ neugierig |
| Humor | Ton der Antworten | ernst ↔ verspielt |
| Ordnung | Umgang mit Wohnung | chaotisch ↔ ordentlich |
| Energie | Aktivitätsniveau | ruhig ↔ aktiv |
| Vertrauen | Basiswert gegenüber Anwender | misstrauisch ↔ vertrauensvoll |

- [ ] Weitere Dimensionen sammeln → [vision-ideas.md](vision-ideas.md)
- [ ] Anzahl der Dimensionen festlegen (zu viele = unleserlich)
- [ ] Kulturelle / sprachliche Besonderheiten (Deutsch)

## Beziehungsmodell (Entwurf)

Gilt für **Anwender ↔ Bewohner** und **Bewohner ↔ Bewohner** ([ADR 0006](../adr/0006-besuchs-system.md)):

| Aspekt | Regel |
|--------|-------|
| Entwicklung | Langsam; Vertrauen und Nähe wachsen über Gespräche und gemeinsame Momente |
| Sichtbarkeit | Keine Balken – nur Ton, Verhalten, Zugang (Tagebuch, Themen, Besuch) |
| Konflikt | Möglich; Versöhnung über Dialog und Persönlichkeit |
| Langfristziel | Innige Freundschaft (oder vergleichbare tiefe Bindung) als Motivation |

Beziehungsdaten leben in der Persönlichkeits-Schicht (nicht im LLM).

## Memory & Vergessen (Entwurf)

| Typ | Verhalten |
|-----|-----------|
| **Kernmomente** | Bleiben langfristig (erster Name, großer Streit, Versöhnung, besonderer Besuch) |
| **Kleinigkeiten** | Verblassen über Zeit; können indirekt nachfragen („Hieß das nicht …?“) |
| **Kompression** | Alte Gespräche werden für LLM-Kontext verdichtet |
| **Offline** | Kein Hintergrund-Tick; beim Wiedereinstieg kurzer „Nachhol“-Kontext aus letztem Zustand + Zeitdelta |

## Namens-Flow (Entwurf)

```text
Start: namenlos
  → Anwender schlägt Namen vor
  → Bewohner: annimmt | lehnt ab | schlägt Alternative vor | wählt eigenen Namen
  → Gespeicherter Name ab Einigung (oder autonomer Entscheidung)
```

Entscheidung durch Persönlichkeit + Beziehungsstand – nicht zufällig ohne Kontext.

## Hobbys & Interessen (Entwurf)

Hobbys sind **nicht** beim Start festgelegt. Sie entstehen, wenn:

- der Anwender **mehrfach** über ein Thema spricht (Musik, Lesen, Kochen, …)
- **Einrichtung** und Objekte in der Wohnung passende Möglichkeiten bieten
- **Geschenke** (später): [UF-001](upcoming-features.md#uf-001--geschenkmechanik)
- der Bewohner autonom Objekte nutzt, die zum Gespräch passen

| Phase | Verhalten |
|-------|-----------|
| Kein Interesse | Thema wird ignoriert oder kurz aufgenommen |
| Wiederholung / Anlass | Interesse wächst im Persönlichkeits-State |
| Etabliert | Hobby erscheint in autonomen Aktionen und Dialog |

Hobbys leben in der Persönlichkeits-Schicht; das LLM formuliert sie im Dialog.

## Offene Designfragen

- [x] Bekommt der Bewohner einen Namen – vom Anwender vorgeschlagen oder selbst gewählt? → **Beides möglich, emergent im Dialog**
- [ ] Kann die Persönlichkeit „brechen“ (z. B. nach langem Ignorieren)?
- [ ] Gibt es feste Archetypen als Zufalls-Basis oder pure Zufallskombination?
- [ ] Wie viel Memory passt ins LLM-Kontextfenster (3B–4B-Modelle)?
- [ ] Beziehungsstufen explizit im Datenmodell oder nur implizit aus Traits?
- [ ] Wie werden Bewohner-zu-Bewohner-Erinnerungen bei Besuchen synchronisiert?

## Traceability

| Roadmap-Phase | Persönlichkeits-Phase | Anforderung |
|---------------|----------------------|-------------|
| Phase 1 – Prototyp | PM-0, PM-1, PM-4 (minimal) | FR-005 (teilweise) |
| Phase 2 – MVP | PM-2, PM-3, PM-5 | FR-005, FR-007, FR-008–FR-014 |
| Phase 3 – Besuche | PM-2 (Erweiterung) | FR-015, [ADR 0006](../adr/0006-besuchs-system.md) |
