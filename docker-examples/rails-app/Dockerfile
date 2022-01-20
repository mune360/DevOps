FROM ruby:3.0.2-alpine

<<<<<<< HEAD
RUN apk update
RUN apk upgrade
RUN apk add --no-cache --upgrade postgresql-client \
    build-base \
    postgresql-dev \
    tzdata  
RUN rm -rf /var/cache/apk/*
=======
RUN apk update; apk upgrade; apk add --no-cache --upgrade vim postgresql-client build-base postgresql-dev tzdata; rm -rf /var/cache/apk/*
>>>>>>> 9ffc9a5bf2bf2ba25da00d89074fa0ca660aa688

WORKDIR /app

COPY . .

ENV RAILS_ENV=production

RUN bundle

CMD /app/docker-entrypoint.sh
