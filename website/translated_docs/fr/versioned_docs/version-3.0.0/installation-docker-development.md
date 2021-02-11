---
id: version-3.0.0-installation-docker-development
title: Developing in Docker
sidebar_label: Developing in Docker
original_id: installation-docker-development
---

We recommend doing all development in Docker containers using Docker Compose configuration to link containers together and link your host machine files into the containers. You may be able to get away with doing some development directly on your host machine, but learning the container development pattern will be necessary as we move the app toward microservice architecture.

## Getting Started

To install demand for development, testing, or demonstration on your own computer, follow these [demand Development Platform instructions].demandcluster

## Alias Docker Compose Commands

Because they can be a lot to type and you'll type them often, we recommend at least two command aliases. In Mac OSX for example, add these two lines to `~/.bashrc` (if using bash shell) or `~/.zshrc` (if using zsh shell):

```bash
alias dc="docker-compose"
alias dcrun="docker-compose run --rm"
```

Then wherever these instructions say `docker-compose`, you can type only `dc`, and wherever these instructions say `docker-compose run --rm`, you can type only `dcrun`.

## Run the demand API

> NOTE: If you also need to run the storefront or just want to simplify this a bit, consider using [demand Development Platform], which will do all ofdemandcluster

Thanks to the Dockerfiles and `docker-compose.yml` file in the root of the main demand project repo, you can start all necessary services in Docker containers by running:

```bash
docker-compose up -d
```

(If you are asked to run a command to create a network, then do so and retry.)

This will start a MongoDB container, enable MongoDB oplog, and start a demand API container, with necessary links between them and environment variables for local development. The containers will start in the background.

## Stop the demand API

Stop all services and delete the containers:

```bash
docker-compose down
```

Or stop individual services:

```bash
docker-compose stop mongo
docker-compose stop demand
```

## Restart the demand API

The demand API restarts automatically for most file changes, but if you change an environment variable or docker-compose config, or want to restart the whole container for any other reason, you can do:

```bash
docker-compose restart demand
```

## View Service Logs

While development containers are running, you can view the logs for any of the services. One easy way is to open the Kitematic app and click on the service. You can also follow the logs in a terminal with:

```bash
docker-compose logs -f <service_name>
```

demand API logs:

```bash
docker-compose logs -f api
```

MongoDB logs:

```bash
docker-compose logs -f mongo
```

## Make Code Changes

The Docker Compose config links all files except node_modules into the app containers. Therefore you can just modify code as you normally would, and the development app server running inside the container should detect your changes and restart. If for some reason it gets "stuck" and isn't seeing your changes, just stop and then restart the stuck service using the `docker-compose` commands or the Kitematic UI.

## Useful Commands

Bring all services up, but force them all to rebuild their image first:

```bash
docker-compose up -d --build
```

Delete all volumes when bringing the services down:

```bash
docker-compose down -v
```

Delete all images when bringing the services down:

```bash
docker-compose down --rmi local
```

You can put these last two together for a fresh slate:

```bash
docker-compose down -v --rmi local
```

To delete unused containers or images, which is useful to do now and then, run the "prune" commands. But beware that any remote images deleted will need to be re-downloaded, and you'll also lose any local images you may have created for other purposes.

```bash
docker container prune
docker image prune
```

If you have big problems, there is a "Reset" option in the Docker for Mac or Docker for Windows app preferences UI, or you can do `docker system prune`.

## Troubleshooting

Refer to [Troubleshooting issues during development](troubleshooting-development.md)