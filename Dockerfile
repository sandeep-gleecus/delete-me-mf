FROM ruby:2.7.5-alpine as base

# Install dependencies:
# - build-base: To ensure certain gems can be compiled
# - nodejs: Compile assets
# - postgresql-dev postgresql-client: Communicate with postgres through the postgres gem
# - libxslt-dev libxml2-dev: Nokogiri native dependencies
# - imagemagick: for image processing
# - gcompact: required for nokogiri to run on an M1 Mac (https://stackoverflow.com/questions/70963924/unable-to-load-nokogiri-in-docker-container-on-m1-mac)
RUN apk --update add \
    build-base \
    nodejs \
    tzdata \
    postgresql-dev \
    postgresql-client \
    libxslt-dev \
    libxml2-dev \
    imagemagick \
    gcompat \
    yarn

# Update Bundler
RUN gem install bundler --version 2.3.6

# Create the Working dir /app
RUN mkdir /app
WORKDIR /app

# Install Gems
ADD Gemfile /app/
ADD Gemfile.lock /app/

# Expose port 3000 for web requests
EXPOSE 3000

# Install prod gems
RUN bundle config set --local without 'development test'
RUN bundle install

# Install node stuff
COPY package.json yarn.lock /app/
RUN yarn install --check-files


ENV RAILS_ENV=production
ARG RAILS_MASTER_KEY
# Run the rails server by default
CMD rm -f tmp/pids/server.pid;bundle exec rails server -b 0.0.0.0

COPY . /app/
RUN cp /app/config/database-sample.yml /app/config/database.yml

RUN SECRET_KEY_BASE=temp bundle exec rake assets:precompile

