FROM ruby:2.6.3

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends apt-utils build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gem install bundler

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install

COPY . $APP_HOME
