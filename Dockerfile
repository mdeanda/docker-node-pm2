FROM node:latest

MAINTAINER Miguel De Anda "miguel@thedeanda.com"

RUN npm install -g pm2@latest
RUN npm install -g node-inspector --unsafe-perm

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 3000
