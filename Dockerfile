FROM node:12-alpine

WORKDIR /app
RUN apk update ; apk add git 

# COPY package*.json /app
# RUN npm install
RUN npm uninstall node-sass
RUN npm i -D sass
CMD [ "npm","rebuild","sass" ]
CMD [ "npm","run","build" ]
