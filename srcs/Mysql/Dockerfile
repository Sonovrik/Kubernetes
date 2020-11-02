FROM alpine

RUN apk update
RUN apk add openrc

RUN apk add mysql mysql-client
RUN mkdir "/run/mysqld"
RUN chown -R mysql /run/mysqld

RUN apk add mysql mariadb-client

COPY ./start.sh ./
COPY ./my.cnf /etc/my.cnf
COPY ./mysql-service.sql ./

EXPOSE 3306

CMD [ "sh", "start.sh"]
