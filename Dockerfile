FROM alpine
RUN apk update
RUN apk add mongodb mongodb-tools
RUN mkdir -p /data/db && \
    chown -R mongodb /data/db
EXPOSE 27017
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
