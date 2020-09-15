FROM node:12-alpine

MAINTAINER Maxi Sosa <maxi3390@gmail.com>

# TAG maxi3390/json-server

RUN npm install -g --production json-server  && \
    rm -rf /root/.npm /usr/lib/node_modules/npm

# Config
EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data

ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]
