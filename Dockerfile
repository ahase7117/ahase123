FROM ruby:2.5.5

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp