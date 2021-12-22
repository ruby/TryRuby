## Building image ##
FROM ruby:3.0.3-slim-bullseye AS builder
WORKDIR /app
# install build dependencies
RUN apt update && apt install make gcc g++ libffi-dev nodejs git -y
COPY . .
RUN bundle install
EXPOSE 4567
CMD ["bin/middleman", "serve"]