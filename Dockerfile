ARG NODE_VERSION=10.15
FROM node:$NODE_VERSION-alpine

LABEL author="Lucas GILHARD <l.gilhard@gmail.com>"
LABEL version="1.0"
LABEL description="Docker image for Ionic dev"

ARG APP_DIR="/app"

# Linux setup
RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

# Yarn
RUN apk add yarn

RUN yarn global add ionic@4.11.0

EXPOSE 8100 49153

WORKDIR $APP_DIR