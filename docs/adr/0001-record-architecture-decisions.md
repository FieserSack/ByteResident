# 0001 – Architecture Decision Records einführen

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

**Byte Resident** befindet sich in der Planungsphase. Technische Entscheidungen (Engine, Sprache, Architektur) müssen nachvollziehbar und versioniert dokumentiert werden.

## Entscheidung

Wir führen **Architecture Decision Records (ADRs)** im Ordner `docs/adr/` ein.

### Format

Jede ADR ist eine Markdown-Datei:

```text
docs/adr/NNNN-kurzer-titel.md
```

### Pflichtabschnitte

1. **Titel** – Nummer und Kurzbeschreibung
2. **Status** – Vorgeschlagen | Akzeptiert | Abgelehnt | Veraltet | Ersetzt durch ADR-XXXX
3. **Datum**
4. **Kontext** – Welches Problem oder welche Frage?
5. **Entscheidung** – Was wurde entschieden?
6. **Konsequenzen** – Positive und negative Auswirkungen

### Prozess

1. Neue Entscheidung als ADR-Entwurf anlegen (Status: Vorgeschlagen)
2. Im Team/Review besprechen
3. Status auf „Akzeptiert“ setzen oder ablehnen
4. Bei Änderung: neue ADR schreiben, alte auf „Ersetzt durch“ setzen – nicht überschreiben

## Konsequenzen

### Positiv

- Entscheidungen sind nachvollziehbar und durchsuchbar
- Neue Teammitglieder verstehen das „Warum“ hinter dem Code
- Veraltete Entscheidungen bleiben als Historie erhalten

### Negativ

- Kleiner Dokumentations-Overhead pro Entscheidung
- Disziplin nötig, ADRs aktuell zu halten

## Nächste ADRs (geplant)

| Nr. | Thema |
|-----|-------|
| 0002 | Spielname „Byte Resident“ (erledigt) |
| 0003 | Spieler-Interaktionsmodell (erledigt) |
| 0004 | Tech-Stack Godot 4.6, Windows-first (erledigt) |
| 0005 | Dialog-System / lokales LLM (erledigt, Ziel für KI-Plugin) |
| 0006 | Besuchs-System (vorgeschlagen) |
| 0007 | Scripted Dialog + KI-Plugin (erledigt) |
| 0008 | Persistenz JSON (erledigt) |
| 0009 | Scripted Dialog Hybrid (erledigt) |
