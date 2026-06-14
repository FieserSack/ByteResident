# 0008 – Persistenz als JSON

- **Status:** Akzeptiert
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Spielstand, Persönlichkeit, Memory, Beziehungen und Tagebuch müssen persistiert werden ([requirements.md](../planning/requirements.md) FR-007). Für den Godot-Windows-Prototyp ([ADR 0004](0004-tech-stack-godot-windows.md)) stand die Wahl zwischen **JSON** und **SQLite**.

## Entscheidung

### Speicherformat: JSON-Dateien

Spielerdaten werden als **JSON** im Benutzer-Verzeichnis gespeichert (z. B. unter `%APPDATA%/ByteResident/` auf Windows).

Geplante Dateien (Entwurf):

| Datei | Inhalt |
|-------|--------|
| `save.json` | Weltzustand, Vorräte, Zeitstempel |
| `personality.json` | Traits, Name, Beziehungsstände |
| `memory.json` | Kernmomente, komprimierte Historie |
| `diary.json` | Tagebuch-Einträge |

Konkrete Schemas werden bei Implementierung definiert; eine Datei vs. mehrere ist noch feinjustierbar.

### Godot-Umsetzung

- `FileAccess` + `JSON.stringify` / `JSON.parse` oder Godot-`Dictionary`-Serialisierung
- Modul `src/persistence/`

## Konsequenzen

### Positiv

- Einfach zu implementieren und zu debuggen (Datei lesbar)
- Keine zusätzliche Dependency
- Ausreichend für Solo-Spieler und moderate Datenmengen
- Passt zu Indie-/Prototyp-Phase

### Negativ

- Keine transaktionalen Abfragen — bei sehr großem Memory ggf. Performance-Thema
- Manuelle Schema-Migration bei Formatänderungen
- Gleichzeitige Zugriffe unkritisch (Single-Player), aber nicht ACID

### Später

Bei Bedarf (z. B. komplexe Besuchs-Synchronisation, große Logs) kann eine **neue ADR** SQLite oder Hybrid einführen — JSON-Dateien nicht überschreiben, sondern ersetzen dokumentieren.

## Nächste Schritte

1. JSON-Schema für `personality.json` und `memory.json` skizzieren
2. Versionsfeld in Savefiles für Migration (`schema_version`)
