FROM node:8.2.1-alpine
LABEL maintainer "palydingnow@gmail.com"

WORKDIR /src-app

COPY ./ /src-app
RUN npm i --production && \
      npm cache clean --force

CMD npm start
