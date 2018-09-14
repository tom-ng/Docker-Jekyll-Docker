FROM ruby:2.5-alpine

LABEL maintainer="Tom Ng"
LABEL email="ngzhenhou@gmail.com"
LABEL organization="Sunway Tech Club"

WORKDIR /site
ADD ./sunwaytechclub-site /site

RUN echo "---------- Installing prerequisites ----------" && \
	apk add make gcc libc-dev g++ git && \
	echo "---------- Installing Jekyll & Bundler ----------" && \
    gem install jekyll bundler && \
    echo "---------- Install required gems from Gemfile ----------" && \
    bundle install && \
    echo "---------- Cleaning up ----------" && \
    apk del make gcc libc-dev g++

EXPOSE 4000
