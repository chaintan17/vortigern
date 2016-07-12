FROM alpine:3.4

MAINTAINER Barbar Startup Factory hey@barbar.com.tr

RUN apk upgrade --update

RUN apk add --no-cache nodejs

RUN mkdir -p /app
ADD . /app

WORKDIR /app

RUN npm install --unsafe-perm

EXPOSE 8889

CMD ["npm run start"]
