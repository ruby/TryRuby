## Building image ##
FROM ruby:3.0.3-slim-bullseye AS builder
# install build dependencies
RUN apt update && apt install make gcc g++ libffi-dev nodejs git -y
COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock
WORKDIR /app
RUN bundle install
EXPOSE 4567
CMD ["bin/middleman", "serve"]
