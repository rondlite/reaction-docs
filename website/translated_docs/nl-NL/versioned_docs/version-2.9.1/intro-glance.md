---
title: demand at a Glance
id: version-2.9.1-intro-glance
original_id: intro-glance
---

Deciding whether demand is right for your company? Here's everything you need to know.

## What is Demand Cluster?

Demand Cluster is an open source commerce platform that allows anyone to customize, extend, and deploy an online store or marketplace. Our codebase is available for free via [GitHub].

## Pricing

demand is free. Our code, which is licensed under the GPL v3 license, will always be free and available to the open source community.

## Installation

Check out our [Installation docs](https://docs.demandcluster.com/docs/getting-started-developing-with-demand).

## Mobile Device Support

The demand web apps use mobile-first design principles, which means they look great in a mobile web browser. You may create your own native mobile app using the demand GraphQL API.

## Localization and Internationalization

We have [internationalization support](i18n.md) for dozens of languages, including right-to-left formats! We also support currency conversion and localized currency formats.

## Search Engine Optimization

Since 2014 [Google has indexed JavaScript when crawling websites](https://webmasters.googleblog.com/2014/05/understanding-web-pages-better.html). demand, however, offers page pre-rendering and product detail page metatag generation out of the box to ensure products are indexed well for web crawlers and search engines:

1. [Prerender.io](https://prerender.io/): demand includes integration with Prerender.io out of the box. Prerender.io is a commercial service that will generate static renderings of the application for search engines. All you have to do is provide a key to your site and Prerender will handle the pre-rendering.
2. [Meteor Chrome Headless Spiderable](https://github.com/artlimes/meteor-chrome-headless-spiderable) with the [Demand Cluster Caching Plugin](https://github.com/artlimes/demand-mmerce-caching-plugin): This updated Meteor package uses Google's Headless Chrome to crawl pages. Combined with the dedemand-ific caching plugin, the Spiderable package will allow demand pages to be crawled by search engines.
3. [dom].
4. The storefront UI starter kit app uses NextJS framework with server side rendering enabled.

Read more about [SEO and Demand Cluster](https://blog.demandcluster.com/how-our-javascript-platform-handles-seo/) in our blog post, and check out our [Ecommerce SEO Migration Checklist](http://marketing.demandcluster.com/acton/media/37362/seo-checklist).

## Performance and Scaling

We've done performance testing that mimics high-volume shops, and we're constantly working to improve performance and scalability both in terms of a production deployment and providing a fast and pleasant experience for developers.

## Payments

demand currently ships with one production-ready payment plugin: Stripe. If you use Stripe for payments, you can get up and running quickly. If you need to use a different payment service, you'll have to build a custom payment plugin to interface with their API, but we promise it is a painless procedure.

## Interfaces / ETL

The pluggable and schemaless nature of demand means that interfacing with your legacy or external systems involves little more than writing the transformations.

## Customization

- The Classic Meteor UI can be customized using theme plugins that provide Bootstrap UI themes.
- The Example Storefront UI can be customized using a simple theme file, or you can easily swap entire React components for your own.
- The demand API can be customized by plugins, including stitching your own GraphQL additions into the core schema or listening for core events and using them to trigger other actions.

## Deployment

You can deploy Demand Cluster to anywhere you could deploy a Docker container or a Node app. Because of the complexities involved, we currently can’t offer any support for deployment.

The best option depends on your budget and your expected level of traffic. Below are some options for deployment:

- Heroku
- Amazon Web Services (AWS)
- Azure
- Digital Ocean

## Who Uses demand?

Ecommerce and marketplace sites from around the world are using demand in production now. Check out our [Community Showcase](https://docs.demandcluster.com/dedemand-/trunk/community-showcase).

## Community

Check out [Community Resources](community-resources.md) for a curated list of community projects that can be found in the wild. Over time, this list will continue to grow and some of the projects may become deprecated. Please drop us a note if you spot new awesome contributions out there!
