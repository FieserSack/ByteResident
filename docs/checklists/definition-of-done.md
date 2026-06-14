# Definition of Done

Checkliste für abgeschlossene Features und Aufgaben.

## Allgemein

- [ ] Akzeptanzkriterien aus [requirements.md](../planning/requirements.md) erfüllt
- [ ] Code folgt Projekt-Konventionen (`.cursor/rules/project-conventions.mdc`)
- [ ] Keine offensichtlichen Lint-/Build-Fehler (sobald Toolchain existiert)
- [ ] Manuelle Smoke-Tests durchgeführt

## Dokumentation

- [ ] Betroffene Docs aktualisiert (falls Verhalten oder Architektur geändert)
- [ ] ADR geschrieben, falls Architekturentscheidung getroffen wurde
- [ ] Roadmap-Status aktualisiert, falls Meilenstein betroffen

## Code-Qualität

- [ ] Kein auskommentierter Debug-Code
- [ ] Keine hardcodierten Secrets oder Credentials
- [ ] Sinnvolle Commit-Messages (siehe [CONTRIBUTING.md](../../CONTRIBUTING.md))

## Review

- [ ] Pull Request erstellt (ab Phase 1)
- [ ] Mindestens ein Review (ab Team-Größe > 1)
- [ ] Feedback adressiert oder bewusst dokumentiert

## Optional (je nach Feature)

- [ ] Unit-Tests geschrieben
- [ ] Assets in `assets/` referenziert und lizenziert
- [ ] Performance nicht spürbar verschlechtert
