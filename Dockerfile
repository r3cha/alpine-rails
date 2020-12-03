FROM node:14.15.1-alpine3.12 as node
FROM ruby:2.7.2-alpine3.12 as build-base

COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node /opt/yarn-v1.22.5 /opt/yarn-v1.22.5

RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs
RUN ln -s /opt/yarn-v1.22.5/bin/yarn /usr/local/bin/yarn
RUN ln -s /opt/yarn-v1.22.5/bin/yarnpkg /usr/local/bin/yarnpkg

RUN apk update && apk add --no-cache g++ make curl git make sqlite-dev postgresql-dev tzdata 

RUN gem install rails -v '6.0.3.4'

WORKDIR /app
