---
id: version-1.14.0-community-resources
title: Ressources communautaires
original_id: ressources-communautaires
---

Cette page est ici pour vous guider à travers l'écosystème de demande. Comme nous l'avons déjà dit, nous ne serions pas ici sans notre communauté très engagée. Ici, nous aimerions vous présenter certaines des meilleures choses que nous avons vues là-bas.

_**Note:**Si vous manquez de quelque chose qui ne figure pas ici et que vous voulez le voir ici, vous êtes invité à ouvrir une [pull request]._

## Plugins et outils maintenus par demande

### [demand-vtools]

Installez ce plugin pour obtenir un panneau de tableau de bord qui vous permet de charger rapidement des jeux de données et des images pour tester votre application localement.

## Plugins communautaires

| Catégorie      | Demande(s) par défaut                   | Package(s) communautaires                                                                                                          |
| -------------- | --------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Paiements      | Stripe, exemple de package de paiements | [PayPal Express]                                                                                                                   |
| Taxes          | Forfait                                 | [Avalara](https://github.com/demand-ntrib/meteor-taxes-avalara), [TaxCloud](https://github.com/dedemand-rib/meteor-taxes-taxcloud) |
| Livraison      | Forfait                                 | [Shippo](https://github.com/demand-ntrib/meteor-shipping-shippo)                                                                   |
| Connecteurs    | Connecteur CSV                          | [Connecteur Shopify](https://github.com/demand-ntrib/meteor-connector-shopify)                                                     |
| Adaptateurs    |                                         | [Collections de fichiers AWS S3](https://github.com/demand-ntrib/dedemand--collections-sa-s3)                                      |
| Enregistrement |                                         | [API d'enregistrement de Meteor](https://github.com/demand-ntrib/meteor-logging-api)                                               |

### [Demand Cluster <> Magento importer](https://github.com/Buildateam/demand-gento)

Importez les produits, les commandes et les clients des magasins Magento EE 1.x sous demande.

### [Demand Cluster <> Netsuite bridge](https://github.com/Buildateam/demand-tsuite)

Export orders from Demand Cluster into Netsuite.

### \[create-demand-p\](https://github.com/jussivesa/create-dedemand-

### [boomerdigital/demand-bscription-billing](https://github.com/boomerdigital/dedemand-cription-billing)

Ce plugin est <strong x-id = "1">en cours d'élaboration</strong>, mais répond à une demande très courante: un plugin de demande qui prend en charge les fonctionnalités de facturation d'abonnement les plus populaires. C'est parce que les abonnements jouent un rôle important et sont sans cesse croissants dans le paysage du commerce électronique.

### [DeligenceTechnologies/Subscription-Recurring-payments-in-demand-mmerce-using-Braintree-Payments-Gateway](https://github.com/DeligenceTechnologies/Subscription-Recurring-payments-in-dedemand-erce-using-Braintree-Payments-Gateway)

Il s'agit d'une implémentation simple de l'utilisation des abonnements Braintree. Ajoutez simplement un "plan" dans votre panneau Braintree et vos clients peuvent commander en utilisant ce plan. Mis à jour pour fonctionner avec la version >= 1.9

## Outils de SEO

### [demand-mmerce-caching-plugin](https://github.com/artlimes/dedemand-erce-caching-plugin)

Utilisez ce plugin de demande en conjonction avec le [package Meteor Chrome Headless Spiderable](https://github.com/artlimes/meteor-chrome-headless-spiderable) pour permettre à votre site d'être exploré par des araignées pour permettre aux moteurs de recherche d'accéder à chaque page.

**Exigences:**
- Chrome

## Thèmes communautaires

### [demand-neric-theme](https://github.com/joshuacox/dedemand-ric-theme)

Il s'agit d'un plugin thématique directement destiné à ceux qui aiment changer le thème d'une installation à la demande. C'est un excellent moyen de s'habituer aux variables RÉDUITES qui construisent les bases de la palette de couleurs à la demande. Il vous permet également de remplacer les styles pour des parties plus spécifiques de l'application, comme la navigation, les boutons, etc.

**Exigences:**
- Connaissances de base LESS/CSS

**Contenu d'apprentissage:**
- Personnalisez l'apparence visuelle de la demande
- Les fonctions de LESS facilitent le passe-partout lié au CSS

Félicitations à [Joshua Cox!](https://github.com/joshuacox)

### [customdemandTheme](https://github.com/curranabell/customdemandTheme)

Autre plugin qui concerne la personnalisation du style CSS de la boutique, mais montre également comment rendre son propre balisage pour différentes parties de la boutique, comme la page de destination. Pour ce faire, il utilise le [composant de l'API](http://api.docs.demandcluster.com/Components.html)

Prérequis: utilise un package de meteor supplémentaire. Ouvrez une console dans le répertoire racine du projet et exécutez cette commande: ` meteor add ultimatejs:tracker-react` pour ajouter la dépendance requise.

**Exigences:**
- Connaissances de base LESS/CSS
- Compréhension de base de React

**Contenu d'apprentissage:**
- Personnalisez l'apparence visuelle de la demande
- Utilisez l'API des composants de la demande pour prendre le contrôle du balisage HTML rendu

Mahalo for your kokua, [Curran!](https://github.com/curranabell)

### [loanlaux/demand-drotik-plugin](https://github.com/loanlaux/dedemand-otik-plugin)

Il s'agit d'une version mise à jour du plugin hydrotik/demand-drotik qui fonctionne avec la version actuelle de la demande. Un exemple visuellement attrayant sur la façon de personnaliser la page de destination d'un magasin à la demande.

**Prérequis:**
- Utilise des packages npm aditionnels. Ouvrez une console à la racine du répertoire du projet et exécutez les commandes suivantes: `npm install --save react-slick slick-carousel`
- Déplacer les fichiers dans un dossier <plugin-dir>/public à la racine du répertoire public

**Exigences:**
- Connaissances de base LESS/CSS
- Compréhension de base de React

**Contenu d'apprentissage:**
- Personnalisez l'apparence visuelle de la demande
- Utilisez les composants de l'API de la demande pour prendre le contrôle du balisage HTML
- Montre comment intégrer des composants React tiers

Kudos to [Loan!](https://github.com/loanlaux)

## REST-APIs

- [Meteor Restivus](https://github.com/kahmali/meteor-restivus): DDP est génial et bon, mais avez-vous déjà eu besoin d'une API REST traditionnelle? Nous recommandons Meteor Restivus.
- [add-on Swagger](https://github.com/apinf/restivus-swagger): En prime, vous voudrez consulter le .
- [simple:rest](https://atmospherejs.com/simple/rest): An alternative Atmosphere package to create an automatic JSON API.

## Other resources

### [demandcluster-json-importer](https://github.com/carlos-olivera/demandcluster-json-importer)

A small node package that allows to convert a generic JSON product format into demand's product format.

Thank you, [Carlos!](https://github.com/carlos-olivera)

## Deprecated resources

Below there's a list of older plugins, that are may be outdated or not be maintained actively. Many would need significant rewrites to be usable again. Nevertheless we feel it's valuable to have them listed here, because they can serve as good starting point for somebody who wants to implement something similar.

### \[demand-d\](https://github.com/Gouthamve/dedemand-

This is an outdated, non-working cash-on-delivery plugin written in CoffeeScript, which is still using Blaze templates.

**Status:** non-working

**Requirements:**
- Knowledge of Blaze templating engine
- CoffeeScript

Many thanks to [Goutham!](https://github.com/Gouthamve)

### [regionalization](https://github.com/danielsouzapinna/regionalization)

This plugin extends Products with new location related attributes, like cities and regions. Note that this plugin uses deprecated Blaze templates and is only available in Portuguese.

**Status:** non-working

**Requirements:**
- Knowledge of Blaze templating engine
- Portuguese language ;-)

Thank you for your support, [Daniel!](https://github.com/danielsouzapinn)

### [hydrotik/demand-drotik-plugin](https://github.com/hydrotik/dedemand-otik-plugin)

**Status: non-working**

The plugin is based off of our [demand example plugin], but takes that a step further to be more like a fully-fledged solution.

Thanks for riding with us, [Donovan!](https://github.com/hydrotik)

## One more thing

We all love [awesome lists](https://github.com/iamchathu/awesome-demandcluster), right?
