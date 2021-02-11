---
id: version-v1.2.0-deploying-demand--managed
title: Managed
original_id: deploying-demand--managed
---
    
Demand Cluster offers managed deployments for demand. The `dedemand- incorporates functionality for any team to deploy demand to multiple environments.

`Launchdock` is the name of our registration gateway for the managed platform.

## demand register

As a user of the demand managed platform, you'll receive an email with a `Launchdock` registration token.

**Register as a platform user**

```sh
# Register with invite token
demand register
```

**Set up an SSH key pair to securely communicate with Launchdock**

```sh
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
#
# create a new SSH key pair
# prompts for filename
# suggest "~/.ssh/launchdock" for ease
ssh-keygen -t rsa -b 4096 -C "you@example.com"

# make sure the ssh-agent is running in the background
eval "$(ssh-agent -s)"

# add your new key to the agent
ssh-add -K ~/.ssh/<private key created above>

# add your public key to Launchdock
demand keys add ~/.ssh/<keyname>.pub
```

## demand create

**Create an app from a prebuilt image**

```sh
demand apps create --name <appname> --image myorg/myapp:v1.0.0

# To deploy an updated version of your pre-built image
demand deploy --name <appname> --image myorg/myapp:v1.1.0
```

**Or run a custom build**

```sh
# (Must be in a demand project dir. This adds a git remote called 'launchdock-<appname>' to your project)
demand apps create --name <appname>
# Push your custom code and start a build
demand deploy --name <appname>
```

## demand deploy

```sh
# Push your custom code and start a build
demand deploy --name <appname>
```

**Example deployment**

An example deployment with a custom smtp server and preconfigured settings deploying the latest demand image from Docker Hub.

```sh
demand apps create --name demo
demand env set \
--app demo \
-e demand_EMAIL="testing@yourdomain.com" \
-e demand_USER="Administrator" \
-e demand_AUTH="PaSSw0Rd" \
-e MAIL_URL="smtp://USERNAME:PASSWORD@HOST:PORT"


demand deploy \
--name demo \
--image demandcluster/demand:latest \
--registry ../config/demand.json \
--settings ../config/settings.json

demand domains add -a demo -d demo.yourdomain.com
demand open -n demo
```
