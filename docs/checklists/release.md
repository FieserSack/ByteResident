# Release-Checkliste

Vor jedem Release (Alpha, Beta, Stable) diese Punkte durchgehen.

## Vorbereitung

- [ ] Alle geplanten Features für dieses Release in [roadmap.md](../planning/roadmap.md) als erledigt markiert
- [ ] Offene Blocker-Issues geschlossen oder bewusst verschoben
- [ ] [CHANGELOG.md](../../CHANGELOG.md) aktualisiert

## Qualität

- [ ] [Definition of Done](definition-of-done.md) für alle Release-Features erfüllt
- [ ] Smoke-Test auf Zielplattform(en) durchgeführt
- [ ] Keine kritischen bekannten Bugs offen
- [ ] Performance akzeptabel auf Referenz-Hardware

## Dokumentation

- [ ] [getting-started.md](../guides/getting-started.md) aktuell (Setup-Schritte)
- [ ] Architektur-Docs spiegeln aktuellen Stand
- [ ] ADRs für alle relevanten Entscheidungen vorhanden

## Assets & Rechtliches

- [ ] Alle verwendeten Assets lizenziert oder selbst erstellt
- [ ] Credits/Lizenzen dokumentiert (falls erforderlich)

## Build & Distribution

- [ ] Build-Prozess dokumentiert und reproduzierbar
- [ ] Version/Tag gesetzt
- [ ] Release-Artefakte erstellt und geprüft
- [ ] Distribution-Kanal vorbereitet (Store, GitHub Releases, …)

## Nach Release

- [ ] Release bekannt gegeben (Changelog, Release Notes)
- [ ] Roadmap für nächste Phase aktualisiert
- [ ] Feedback-Kanal definiert (Issues, Discord, …)
