FROM ruby:2.5-alpine

LABEL maintainer="Tom Ng"
LABEL email="ngzhenhou@gmail.com"
LABEL organization="Sunway Tech Club"

WORKDIR /site
ADD ./sunwaytechclub-site /site

RUN apk add make gcc libc-dev g++ git && \
    gem install jekyll bundler && \
    bundle install

EXPOSE 4000
