# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM alpine

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

# Install dependencies
RUN  npm install

WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
