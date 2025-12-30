## Building image ##
FROM ruby:3.4.8-slim-trixie AS builder
# install build dependencies
RUN apt update && apt install make gcc g++ libffi-dev nodejs git -y
COPY ./.ruby-version /app/.ruby-version
COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock
WORKDIR /app
RUN bundle install
EXPOSE 4567
CMD ["bin/middleman", "serve"]
