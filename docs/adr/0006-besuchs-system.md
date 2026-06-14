# 0006 – Besuchs-System (Bewohner unter Bewohnern)

- **Status:** Vorgeschlagen
- **Datum:** 2026-06-14
- **Entscheider:** Projekt-Team

## Kontext

Die [Vision](../planning/vision.md) sieht vor, dass Bewohner **andere Bewohner fremder Spieler besuchen** können – z. B. für Parties. Gleichzeitig gilt [ADR 0003](0003-spieler-interaktionsmodell.md): Der Anwender steuert seinen Bewohner nicht direkt, sondern beeinflusst ihn **nur per Dialog mit der eigenen Figur**.

Bisher war „Multiplayer / Online“ ein Nicht-Ziel. Das wird präzisiert: **kein offenes Multiplayer**, aber **gezielte soziale Besuche**.

## Entscheidung

### Besuche per Code

Ein Bewohner kann die Wohnung eines anderen Bewohners betreten, wenn ein gültiger **Zugangscode** vorliegt:

| Code-Typ | Zweck (Entwurf) |
|----------|-----------------|
| **Einladungscode** | Einmalig oder zeitlich begrenzt; gezielte Einladung |
| **Freundschaftscode** | Dauerhafter Zugang für vertraute Bewohner-Paare |
| **Öffentlicher Zugangscode** | Offen für viele Besucher (z. B. Party) |

Details der Code-Logik werden in der Implementierung festgelegt.

### Beziehungen zwischen Bewohnern

Für Beziehungen **Bewohner ↔ Bewohner** gelten dieselben Prinzipien wie **Anwender ↔ Bewohner**:

- Vertrauen entwickelt sich über Zeit und Interaktion
- Kernmomente bleiben, Kleines kann vergessen werden
- Konflikte und Versöhnung sind möglich
- Verhalten hängt von Persönlichkeit und bestehender Beziehung ab

Die Figuren interagieren **autonom** miteinander – nicht durch Anwender-Steuerung.

### Anwender-Rolle beim Besuch

**Jeder Spieler spricht nur mit der eigenen Spielfigur** – wie im Solo-Spiel. Einfluss auf das Geschehen entsteht ausschließlich über diesen Dialog.

Zusätzlich kann der Spieler **mit dem anderen Spieler chatten** (menschlich, Spieler ↔ Spieler) – **nicht** mit der fremden Spielfigur.

```text
Spieler A (Besucher)                    Spieler B (Gastgeber)
────────────────────                    ──────────────────────
Dialog → eigene Figur (Besucher)        Dialog → eigene Figur (Gastgeber)
Chat   → Spieler B (optional)           Chat   → Spieler A (optional)
Beobachten: fremde Figuren              Beobachten: Besucher-Figuren
```

### Parties

Bei einer Party gilt dasselbe Modell:

- **Gemeinsamer Spieler-Chat** (alle anwesenden Spieler)
- **Einfluss** auf das Geschehen **nur** über Dialog mit der **eigenen** Spielfigur
- Mehrere Bewohner interagieren **autonom** untereinander; Anwender beobachten und sprechen mit „ihrem“ Bewohner

### Technische Richtung (vorläufig)

- **Kein Echtzeit-Multiplayer** mit gemeinsamer Simulation aller Figuren durch einen Client
- Besuche erfordern **Netzwerk / Backend** (TBD in ADR 0004 und Architektur)
- Dialog mit **eigener** Figur bleibt **lokal** (ADR 0005)
- Spieler-zu-Spieler-Chat erfordert separates Messaging (TBD)
- Synchronisation von Besuchs-Kontext und Bewohner-zu-Bewohner-Beziehungen ist zu klären

## Konsequenzen

### Positiv

- Konsistent mit Dialog-only: kein fremdes „NPC ansprechen“
- Soziale Ebene über Spieler-Chat ohne Bruch des Kernprinzips
- Parties skalieren über Spieler-Chat + autonome Figuren

### Negativ / Offen

- Backend für Besuche, Codes und Spieler-Chat nötig
- Zwei Kommunikationskanäle (Figur-Dialog lokal, Spieler-Chat remote) – UX zu gestalten
- Moderation des Spieler-Chats bei öffentlichen Parties (TBD)
- Kinderschutz und Datenschutz bei Spieler-zu-Spieler-Interaktion

## Abgrenzung

| In Scope | Out of Scope (vorerst) |
|----------|------------------------|
| Besuche per Code | Offene Welt, globale Lobby |
| Bewohner-zu-Bewohner (autonom) | Anwender dialogt mit fremder Figur |
| Spieler-zu-Spieler-Chat bei Besuch/Party | Globaler öffentlicher Chat |
| Einfluss nur über eigene Figur | Direkte Steuerung der Figur |

## Nächste Schritte

1. Backend-Architektur skizzieren (mit ADR 0004 Tech-Stack)
2. Besuchs-Ablauf und Party-UX als Sequenzdiagramm
3. Datenschutz- und Moderations-Konzept für Spieler-Chat
