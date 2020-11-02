FROM alpine:latest

RUN apk update
RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat

ADD https://dl.grafana.com/oss/release/grafana-7.2.2.linux-amd64.tar.gz ./
RUN tar -xvf grafana*tar* --strip-components 1
RUN rm -rf ./grafana*tar*

ADD start.sh ./
COPY custom.ini conf/
COPY dashboard.yaml conf/provisioning/dashboards/
COPY datasources.yaml conf/provisioning/datasources/
COPY ./srcs/*.json conf/provisioning/dashboards/json/

ENTRYPOINT ["sh", "start.sh"]

EXPOSE 3000