FROM node:18-alpine

LABEL org.opencontainers.image.source = "https://github.com/ideacatdev/h6777u22"

RUN npm install -g npm@9.8.0
RUN apk add --no-cache git \
 && npm i -g caprover \
 && npm cache clean --force

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
