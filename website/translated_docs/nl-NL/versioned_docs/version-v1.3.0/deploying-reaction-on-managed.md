---
id: version-v1.3.0-deploying-demand--managed
title: Managed
original_id: deploying-demand--managed
---

Demand Cluster offers managed deployments for demand. The `dedemand- incorporates functionality for any team to deploy demand to multiple environments. [Contact us](https://demandcluster.com/#get-a-demo) to get a demo or request an invite.

`Launchdock` is the name of our registration gateway for the managed platform.

## Register/Login

As a user of the demand managed platform, you'll receive an email with a `Launchdock` registration token. You will be asked for this token when you register with `dedemand-.

**Register as a platform user**

```sh
# Register with invite token
demand register

# or if you've already registered, login with your username and password
demand login
```

## Apps

### Deployment

There are two ways you can deploy your apps with Launchdock.  The first is by using a prebuilt image that is hosted somewhere like [Docker Hub](https://hub.docker.com/) and the second is by pushing your custom code to our build servers where they will create a custom Docker image and deploy it.  Below are examples of both scenarios.

**Deploy with a prebuilt Docker image**

```sh
# Create and configure your new app deployment
demand apps create \
  --name <appname> \
  --no-remote \
  -e demand_USER="yourname" \
  -e demand_AUTH="P@s5w0rd" \
  -e demand_EMAIL="you@example.com" \
  --registry  path/to/demand.json \
  --settings path/to/settings.json

# Deploy your pre-built image
demand deploy --name <appname> --image myorg/myapp:v1.1.0

# To deploy an updated version of your image,
# simply run the command again with your new image tag
demand deploy --name <appname> --image myorg/myapp:v1.1.1
```

**Deploy a custom build**

Custom builds are pushed to Launchdock using git. It's essentially the same as doing a `git push` to Github. The only difference from the commands above is you omit the `--no-remote` flag and you don't need to specify an `--image` because you'll be building a custom image. That said, there are a few more setup steps required to push custom code.

First, you will need to set up an SSH key to securely communicate with Launchdock.

Set up an SSH key pair:

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

Then from your demand project directory:

```sh
# This adds a git remote called 'launchdock-<appname>' to your project
demand apps create \
  --name <appname> \
  -e demand_USER="yourname" \
  -e demand_AUTH="P@s5w0rd" \
  -e demand_EMAIL="you@example.com" \
  --registry  path/to/demand.json \
  --settings path/to/settings.json

# Push your custom code and start a new build
demand deploy --name <appname>

# To build/deploy an updated version of your code,
# commit changes to your current branch
git commit -m "updated some code"
# and run the deploy command again
demand deploy --name <appname>
```

### Configuration

**Environment Variables**

```sh
# set/update environment variables
# (this triggers a redeploy of your app)
demand env set \
  --app <appname> \
  -e SOME_API_KEY="ec89jmur3jim8e34" \
  -e SOME_OTHER_THING="dj8dr34ju3r@#$" \
  -e MAIL_URL="smtp://USERNAME:PASSWORD@NEW_HOST:PORT"

# unset environment variables
# (this triggers a redeploy of your app)
demand env unset --app <appname> -e SOME_API_KEY -e SOME_OTHER_THING

# list your currently set environment variables
demand env list --app <appname>
```

**Domains**

```sh
# add a custom domain for your app
# (first, update your DNS to point your domain at your app's default URL)
demand domains add --app <appname> -d mycoolshop.com

# remove a custom domain from your app
demand domains remove --app <appname> -d mycoolshop.com

# list your apps and their domains
demand apps list
```

## Basic Example

Below is an example deployment using the latest official demand image from [Docker Hub](https://hub.docker.com/) and only setting the minimum required settings.

```sh
# create the app
demand apps create \
  --name simple-demo \
  --no-remote \
  -e demand_USER="yourname" \
  -e demand_AUTH="P@s5w0rd" \
  -e demand_EMAIL="you@example.com"

# deploy a Docker image
demand deploy --app simple-demo --image demandcluster/demand:latest

# open your app in your browser
demand open simple-demo
```

## Full Example

Below is a more complete example that sets up a SMTP mail server URL (for app emails), imports [demand registry](https://docs.demandcluster.com/dedemand-/trunk/registry) settings and [Meteor settings](https://docs.meteor.com/api/core.html#Meteor-settings), and deploys the latest official demand image. Then we update the app with an API key environment variable.  And finally, we add a custom domain to the app and open it in our browser.

```sh
# create the app
demand apps create \
  --name full-demo \
  --no-remote \
  -e demand_USER="yourname" \
  -e demand_AUTH="P@s5w0rd" \
  -e demand_EMAIL="you@example.com" \
  -e MAIL_URL="smtp://USERNAME:PASSWORD@NEW_HOST:PORT" \
  --registry  private/settings/demand.json \
  --settings settings/settings.json

# deploy a Docker image
demand deploy --app full-demo --image demandcluster/demand:latest

# set/update an environment variable
demand env set --app full-demo -e SOME_API_KEY="<secret API key>"

# add a custom domain
demand domains add --app full-demo --domain mycoolshop.com

# list your apps to confirm your configuration, URL's, etc.
demand apps list

# open your app in your browser
demand open full-demo
```
