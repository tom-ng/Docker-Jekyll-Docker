FROM ruby:2.5.1-stretch

LABEL maintainer="Tom Ng"
LABEL email="ngzhenhou@gmail.com"
LABEL organization="Sunway Tech Club"

SHELL ["/bin/bash", "-c"]

RUN mkdir /site

RUN command curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    adduser root rvm

RUN source /etc/profile.d/rvm.sh && \
    rvm install 2.5.0 && \
    gem install jekyll bundler


ENV GEM_HOME="/usr/local/rvm/gems/ruby-2.5.0/gems"
ENV PATH="/usr/local/rvm/gems/ruby-2.5.0/bin:${PATH}"

ADD ./sunwaytechclub-site /site

WORKDIR /site

RUN bundle install

EXPOSE 4000