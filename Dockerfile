FROM ruby:2.5-alpine

LABEL maintainer="Tom Ng"
LABEL email="ngzhenhou@gmail.com"
LABEL organization="Sunway Tech Club"

RUN apk add make gcc libc-dev g++ git && \
    git clone -b source-dev --single-branch https://github.com/sunwaytechclub/sunwaytechclub-site.git

WORKDIR /sunwaytechclub-site

RUN gem install jekyll bundler && \
    bundle install && \
    apk del make gcc libc-dev g++

EXPOSE 4000
