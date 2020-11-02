FROM alpine:latest

RUN apk update
RUN apk add influxdb

ADD start.sh ./

ENTRYPOINT ["sh", "start.sh"]

EXPOSE 8086