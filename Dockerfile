FROM node:13.12.0-alpine3.11 as node
FROM ruby:2.7.0-alpine3.11 as build-base

COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node /opt/yarn-v1.22.4 /opt/yarn-v1.22.4

RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs
RUN ln -s /opt/yarn-v1.22.4/bin/yarn /usr/local/bin/yarn
RUN ln -s /opt/yarn-v1.22.4/bin/yarnpkg /usr/local/bin/yarnpkg

RUN apk update && apk add --no-cache g++ make curl git make sqlite-dev postgresql-dev tzdata 

RUN gem install rails -v '6.0.3.1'

WORKDIR /home
