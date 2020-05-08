---
id: version-3.0.0-acceptance-testing
title: Acceptance Testing
original_id: acceptance-testing
---

## Overzicht

### Wat zijn acceptatie testen?

Met een acceptatietest (AT) testen we de toepassing en de functionaliteit vanuit het oogpunt van een gebruiker. Verwante functionaliteiten worden samen gegroepeerd en getest op basis van de stappen van een AT script. AT-scripts beschrijven de functionaliteit die getest moet worden, succescriteria, teststappen en alle testvarianten.

### Waarom is een acceptatie test belangrijk?

Acceptatie-tests bieden ons:
- Inzicht in pijnpunten en problemen met betrekking tot gebruikersstromen
- Duidelijke stappen om problemen te reproduceren die zijn ontdekt tijdens AT
- Een plan om alle gebruikers-flow varianten te testen

## Aan de slag
Binnen het AT-proces zijn er drie belangrijke punten
- Test instellingen
- Testen
- Probleem rapportering

**Test Setup** De meeste AT scripts zullen setup-stappen hebben als een vereiste voor de werkelijke test. Alle relevante setup-stappen zullen in elk AT-script onder _Test Setup_ worden vermeld. Bekijk alle AT setup-stappen [hier](test-setup.md).

**Testen** Zodra het setup-proces van de test is voltooid is het tijd om te testen. Elk AT script zal gebruikers-flow stappen moeten voltooien, veel gebruikers-flow stappen zullen testvarianten hebben die misschien ook moeten worden getest. Succes van kritieke testvarianten worden weergegeven in de _Touch Points_ van het script, deze testvarianten moeten worden voltooid om als succesvol te kunnen worden beschouwd.

**Issue Rapportage** Alle AT scripts zullen een _Bedoeld Resultaat_ sectie hebben, als je elke stap van het AT script hebt voltooid en je de beoogde resultaten niet ziet, dan wordt de acceptatietest als een mislukking beschouwd. If this is the case follow the steps for reporting an issue in the [Contributing Guide](https://docs.demandcluster.com/demand-cs/trunk/contributing-to-demand#step-2-find-or-open-an-issue)

## Scripts testen
Table of contents for all Demand Cluster AT scripts.

**BestellIing scripts**
- [Bestelling aanmaken](order-creation.md)


<!--
 - [Order Fulfillment](scripts/order-fulfillment.md)
 - [Order Canceling](scripts/order-canceling.md)
 - [Order Refunding](scripts/order-refunding.md)
-->

## Bronnen
**Testen**
- [demand-vtools]
- [Acceptatie-test scriptsjablonen](script-template)

**Rapportage**
- [Handleiding](contributing-to-demand)
