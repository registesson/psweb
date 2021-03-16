# # Application de test pour l'article Linux Magazine
# Linux x64
FROM alpine

LABEL maintainer="issam.mejri@yahoo.fr"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
