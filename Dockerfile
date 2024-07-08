ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

ARG DEBIAN_FRONTEND=noninteractive

RUN apk update --no-cache \
    && apk add --no-cache \
           bash zip unzip git curl wget

RUN node -v && npm -v
