FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME /application
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN gem install bundler
RUN bundle install
ADD . $APP_HOME
