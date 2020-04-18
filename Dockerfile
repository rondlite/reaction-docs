FROM node:8-alpine

ARG NAME=demand-cs
ARG DESCRIPTION="Demand Docs: Docusarus static documentation site generator"
ARG URL=https://github.com/demandcluster/demand-cs
ARG DOC_URL=https://github.com/demandcluster/demand-cs
ARG VCS_URL=https://github.com/demandcluster/demand-cs
ARG VCS_REF
ARG VENDOR
ARG BUILD_DATE
ARG BUILD_COMPARE_URL
ARG BUILD_ENV=test
ARG BUILD_NUMBER
ARG BUILD_PLATFORM
ARG BUILD_PLATFORM_PROJECT_USERNAME
ARG BUILD_PLATFORM_PROJECT_REPONAME
ARG BUILD_PULL_REQUESTS
ARG BUILD_TRIGGERED_BY_TAG
ARG BUILD_URL
ARG CIRCLE_WORKSPACE_ID
ARG CIRCLE_WORKFLOW_ID
ARG CIRCLE_WORKFLOW_JOB_ID
ARG CIRCLE_WORKFLOW_UPSTREAM_JOB_IDS
ARG CIRCLE_WORKSPACE_ID
ARG GIT_REPOSITORY_URL
ARG GIT_SHA1
ARG LICENSE

ENV APP_SOURCE_DIR=/usr/local/src/demand-p \
    PATH=$PATH:/usr/local/src/node_modules/.bin

LABEL maintainer="demand Commerce <engineering@demandcluster.com>" \
      com.demandcluster.build-date=$BUILD_DATE \
      com.demandcluster.name=$NAME \
      com.demandcluster.description=$DESCRIPTION \
      com.demandcluster.url=$URL \
      com.demandcluster.vcs-url=$VCS_URL \
      com.demandcluster.vcs-ref=$VCS_REF \
      com.demandcluster.vendor=$VENDOR \
      com.demandcluster.docker.build.compare-url=$BUILD_COMPARE_URL \
      com.demandcluster.docker.build.number=$BUILD_NUMBER \
      com.demandcluster.docker.build.platform=$BUILD_PLATFORM \
      com.demandcluster.docker.build.platform.project.username=$BUILD_PLATFORM_PROJECT_USERNAME \
      com.demandcluster.docker.build.platform.project.reponame=$BUILD_PLATFORM_PROJECT_REPONAME \
      com.demandcluster.docker.build.pull-requests=$BUILD_PULL_REQUESTS \
      com.demandcluster.docker.build.triggered-by-tag=$BUILD_TRIGGERED_BY_TAG \
      com.demandcluster.docker.build.url=$BUILD_URL \
      com.demandcluster.docker.build.circle.workflow.id=$CIRCLE_WORKFLOW_ID \
      com.demandcluster.docker.build.circle.workflow.job.id=$CIRCLE_WORKFLOW_JOB_ID \
      com.demandcluster.docker.build.circle.workflow.upstream.job.ids=$CIRCLE_WORKFLOW_UPSTREAM_JOB_IDS \
      com.demandcluster.docker.build.circle.workflow.url=https://circleci.com/workflow-run/$CIRCLE_WORKFLOW_ID \
      com.demandcluster.docker.build.circle.workspace.id=$CIRCLE_WORKSPACE_ID \
      com.demandcluster.docker.git.repository.url=$GIT_REPOSITORY_URL \
      com.demandcluster.docker.git.sha1=$GIT_SHA1 \
      com.demandcluster.docker.license=$LICENSE

WORKDIR $APP_SOURCE_DIR/..
COPY package.json yarn.lock $APP_SOURCE_DIR/../

# Build the dependencies into the Docker image in a cacheable way. Dependencies
# are only rebuilt when package.json or yarn.lock is modified.
#
# The project directory will be mounted during development. Therefore, we'll
# install dependencies into an external directory (one level up.) This works
# because Node traverses up the fs to find node_modules.
RUN set -ex; \
  if [ "$BUILD_ENV" = "production" ]; then \
    yarn install \
      --frozen-lockfile \
      --ignore-scripts \
      --no-cache \
      --production; \
  elif [ "$BUILD_ENV" = "test" ]; then \
    yarn install \
      --frozen-lockfile \
      --ignore-scripts \
      --no-cache; \
  elif [ "$BUILD_ENV" = "development" ]; then \
    yarn install \
      --cache-folder /home/node/.cache/yarn \
      --ignore-scripts; \
  fi; \
  rm package.json yarn.lock

WORKDIR $APP_SOURCE_DIR
COPY . $APP_SOURCE_DIR

RUN yarn run build

CMD ["yarn start"]
