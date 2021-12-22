## Building image ##
FROM ruby:3.0.3-slim-bullseye AS builder
WORKDIR /app
# install build dependencies
RUN apt update && apt install make gcc g++ libffi-dev nodejs git -y
COPY . .
RUN bundle install
RUN bin/middleman build

## Final image ##
FROM nginx:1.20.2-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]