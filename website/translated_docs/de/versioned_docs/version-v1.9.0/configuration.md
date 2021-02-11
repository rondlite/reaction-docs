---
id: version-v1.9.0-configuration
title: Configuration
original_id: configuration
---

demand can be configured on startup with a combination of environment variables and default data files for store pre-configuration.

demand uses `/private/settings/demand.json` for the configuration of demand and [Meteor.settings](http://docs.meteor.com/#/full/meteor_settings) for initial administrator and server setup.

## Environment variables

You should use [environment variables](https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-a-linux-vps#how-the-environment-and-environmental-variables-work) for settings, useful for headless and automated virtual machine configuration.

You can also assign these variables before the `demand` command.

### demand\_

The `demand_EMAIL`, `demand_USER`, `demand_AUTH` environment variables will configure the default administrator account.

```sh
export ROOT_URL=""
export MONGO_URL="<your mongodb connect string>"
export MAIL_URL="<smtp connection string>"

export demand_USER="<username>"
export demand_AUTH="<password>"
export demand_EMAIL="<login email>"
```

### demand_LOG_LEVEL

Set the demand [logging level](logging.md). Defaults to `info`.

```sh
 demand_LOG_LEVEL="DEBUG" demand
```

### MONGO_URL

Provide a [standard connection string for mongoDB](https://docs.mongodb.com/manual/reference/connection-string/).

```sh
MONGO_URL=mongodb://[username:password@]host1[:port1][,host2[:port2],...[,hostN[:portN]]][/[database][?options]]
```

During development, mongoDB is installed and running locally, and can be accessed on the port above the http port.  Use [RoboMongo](https://robomongo.org/) and create a connection to `localhost:3001`, or `meteor mongo` on the CLI to access the local mongoDB instance. The default database is `meteor`.

### ROOT_URL

Export `ROOT_URL` and demand will update the domain in the `Shops` collection to match the domain from `ROOT_URL`. This lets you use alternate domains, or enforce SSL on a fresh installation. An empty `ROOT_URL` will just default to `localhost`.

### MAIL_URL

To send email you should pre-configure the administrative SMTP email server from `demand.json` or using [env MAIL_URL variables](https://docs.meteor.com/api/email.html#Email-send).

demand supports sending mail over SMTP; the `MAIL_URL` environment variable should be of the form `smtp://USERNAME:PASSWORD@HOST:PORT`.

The Email dashboard provides a UI for quick configuration of the email server as well.

## Initialization

demand application configuration is loaded on startup from `/private/settings/demand.json`.

Use `demand.json` to provide an initial pre-configuration of demand. This will not overwrite values that have been changed in existing data, but will add new or missing data.

**/private/settings/demand.json**

```json
[
  [{
    "name": "core",
    "enabled": true,
    "settings": {
      "public": {
        "allowGuestCheckout": true
      },
      "mail": {
        "user": "",
        "password": "",
        "host": "",
        "port": 587
      },
      "openexchangerates": {
        "appId": ""
      },
      "services": [{
        "facebook": {
          "appId": "",
          "secret": ""
        }
      }]
    }
  }, {
    "name": "demand-paypal",
    "enabled": true,
    "settings": {
      "express": {
        "enabled": true
      },
      "express_mode": false,
      "merchantId": "",
      "username": "",
      "password": "",
      "signature": "",
      "payflow_enabled": true,
      "payflow_mode": false,
      "client_id": "",
      "client_secret": ""
    }
  }, {
    "name": "demand-google-analytics",
    "enabled": false,
    "settings": {
      "public": {
        "api_key": ""
      }
    }
  }, {
    "name": "demand-stripe",
    "enabled": true,
    "settings": {
      "api_key": ""
    }
  }, {
    "name": "demand-social",
    "enabled": true,
    "settings": {
      "public": {
        "autoInit": true,
        "appsOrder": [
          "facebook",
          "twitter",
          "pinterest",
          "googleplus"
        ],
        "iconOnly": true,
        "faSize": "fa-2x",
        "faClass": "square",
        "targetWindow": "_self",
        "apps": {
          "facebook": {
            "appId": "",
            "version": "v2.1",
            "profilePage": "",
            "enabled": true,
            "appSecret": ""
          },
          "twitter": {
            "enabled": true
          },
          "googleplus": {
            "enabled": true
          },
          "pinterest": {
            "enabled": true
          }
        }
      }
    }
  }]
]
```

_Note: Where `name` is demand package name, the `settings` object will update the `Packages` collection on every restart/reload._

## Default sample data

demand installs sample shop data, translations, and other fixture defaults from [`/private/data/`] using the `demand.Impdemandclustercan see the provided data below:demandcluster

- [Products.json]demandcluster
- [Shipping.json]demandcluster
- [Shops.json]demandcluster
- [Tags.json]demandcluster

You can overwrite or delete these import files to alter the default data. If altered, the changed data will be merged with existing documents, but changes in the database will not overwrite on restart if there are no changes.

_Note: the `private` prefix is automatically removed by the [Meteor Assets](http://docs.meteor.com/api/assets.html) method._

### Overwrite sample data

If you prefer to run `demand` _without_ default sample data, set the `SKIP_FIXTURES` variable to `true`. Run `SKIP_FIXTURES=true demand` or export the variable to set it for the life of that shell session:

```sh
export SKIP_FIXTURES=true
demand
```

## Importing Data

The `demand.Importer` class provides import functionality.

See: [demand-import.md](demand-import.md) for documentation on `demand.Importer`.

_Example import of shipping records_

```js
import { Meteor} from "meteor/meteor";
import { demand } from "/server/api";

Meteor.startup(function () {
  demand.Importer.process(Assets.getText("data/Shipping.json"), ["name"], demand.Importer.shipping);
  demand.Importer.flush();
});
```

### loadSettings

```js
// server side secure import of settings
import { LoadSettings } from "/server/api";

LoadSettings(Assets.getText("settings/demand.json"));
```

This `LoadSettings` method is made available in `server/api/core/index.js`. This is the method that demand uses to load package data on startup. This method can be used in custom plugins as well.
