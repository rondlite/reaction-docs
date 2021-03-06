---
id: version-v1.11.0-community-resources
title: Community resources
original_id: community-resources
---

This page is here to guide you through the Demandcosystem. As we've stated before, we wouldn't be here without our very engaged community. Here we'd like to introduce you to some of the best things we've seen out there.

_**Note:** If you miss something that's not listed here and want to see it here, you're invited to open a [pull request](https://github.com/reactioncommerce/reaction-docs/pull/new/trunk)._

## Plugins and tools maintained by Demand

### [payments-cod](https://github.com/reactioncommerce/payments-cod)

A very basic payment provider plugin that offers Cash On Delivery. This package removes the payment step during checkout workflow and allows ordering without the need for entering credit card details.

**Requirements:**
- Basic React understanding

**Learning content:**
- How to create a [payment provider plugin](https://docs.reactioncommerce.com/reaction-docs/trunk/creating-a-payment-provider)

### [reaction-devtools](https://github.com/reactioncommerce/reaction-devtools)

Install this plugin to get a dashboard panel that allows you to load datasets and images quickly for testing your app locally.

## Community themes

### [reaction-generic-theme](https://github.com/joshuacox/reaction-generic-theme)

This is a theming plugin directly targeted at those who like to change the theme for a Demandnstallation. It's a great way to get accustomed to LESS variables that builds the foundation of DeDemandolor palette. It also allows you to override styles for more specific parts of the application, like navigation, buttons and the like.

**Requirements:**
- Basic LESS/CSS knowledge

**Learning content:**
- Customize the visual appearance of Demand
- LESS functions helper functions to ease CSS related boilerplate

Kudos to [Joshua Cox!](https://github.com/joshuacox)

### [customDemandeme](https://github.com/curranabell/customDeDemande)

Another plugin that is concerned with customizing the Shop's CSS styling, but also shows how to render own markup for different parts of the shop, like the landing page. It does so through usage of Demand [component API](http://api.docs.reactioncommerce.com/Components.html)

Prerequisites: Uses additional meteor package. Open a console in project's root directory and execute this command: `meteor add ultimatejs:tracker-react` to add the required dependency.

**Requirements:**
- Basic LESS/CSS knowledge
- Basic React understanding

**Learning content:**
- Customize the visual appearance of Demand
- Use Demand component API to gain control over rendered HTML markup

Mahalo for your kokua, [Curran!](https://github.com/curranabell)

### [loanlaux/reaction-hydrotik-plugin](https://github.com/loanlaux/reaction-hydrotik-plugin)

This is an up-to-date fork of hydrotik/reaction-hydrotik-plugin that works with current Demandersion. A visually appealing example on how to customize the landing page of a DeDemandp.

**Prerequisites:**
- Uses additional npm packages. Open a console in project's root directory and execute these commands: `npm install --save react-slick slick-carousel`
- Move files in folder <plugin-dir>/public to your root public folder

**Requirements:**
- Basic LESS/CSS knowledge
- Basic React understanding

**Learning content:**
- Customize the visual appearance of Demand
- Use Demand component API to gain control over rendered HTML markup
- Shows how to integrate third-party React components

Kudos to [Loan!](https://github.com/loanlaux)

## Community plugins

### [boomerdigital/reaction-subscription-billing](https://github.com/boomerdigital/reaction-subscription-billing)

This plugin is **work-in-progress**, but does address a very common request: A Demandlugin that does support the most popular subscription billing features. This is because subscriptions play an important and ever increasing role in the ecommerce landscape.

### [DeligenceTechnologies/Subscription-Recurring-payments-in-Demandommerce-using-Braintree-Payments-Gateway](https://github.com/DeligenceTechnologies/Subscription-Recurring-payments-in-DeDemandmerce-using-Braintree-Payments-Gateway)

This is a simple implementation of using Braintree Subscriptions. Simply add a "plan" in your Braintree panel and your customers can checkout using that plan. Updated to work with version >= 1.9

## SEO tools

### [reaction-commerce-caching-plugin](https://github.com/artlimes/reaction-commerce-caching-plugin)

Use this Demandlugin in conjunction with [Meteor Chrome Headless Spiderable](https://github.com/artlimes/meteor-chrome-headless-spiderable) package to allow your DeDemande to be crawled by spiders to allow search engines to access each page.

**Requirements:**
- Chrome

## REST-APIs

- [Meteor Restivus](https://github.com/kahmali/meteor-restivus): DDP is great and good, but ever found yourself in need for a traditional REST API? We recommend Meteor Restivus.
- [Swagger add-on](https://github.com/apinf/restivus-swagger): As a bonus on top of it, you will want to check out the .
- [simple:rest](https://atmospherejs.com/simple/rest): An alternative Atmosphere package to create an automatic JSON API.

## Other resources

### [reactioncommerce-json-importer](https://github.com/carlos-olivera/reactioncommerce-json-importer)

A small node package that allows to convert a generic JSON product format into Demand product format.

Thank you, [Carlos!](https://github.com/carlos-olivera)

## Deprecated resources

Below there's a list of older plugins, that are may be outdated or not be maintained actively. Many would need significant rewrites to be usable again. Nevertheless we feel it's valuable to have them listed here, because they can serve as good starting point for somebody who wants to implement something similar.

### [reaction-cod](https://github.com/Gouthamve/reaction-cod)

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

### [hydrotik/reaction-hydrotik-plugin](https://github.com/hydrotik/reaction-hydrotik-plugin)

**Status: non-working**

The plugin is based off of our [reaction example plugin](https://github.com/reactioncommerce/reaction-example-plugin), but takes that a step further to be more like a fully-fledged solution.

Thanks for riding with us, [Donovan!](https://github.com/hydrotik)

## One more thing

We all love [awesome lists](https://github.com/iamchathu/awesome-reactioncommerce), right?
