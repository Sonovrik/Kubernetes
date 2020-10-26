FROM alpine:latest

# INSTALL SOFTWARE
RUN apk update
RUN apk add bash
RUN apk add openrc

# CREATE USER
RUN apk add mysql mysql-client
RUN mkdir "/run/mysqld"
RUN chown -R mysql /run/mysqld

# INSTALL SQL (mariadb)
RUN apk add mysql mariadb-client

# COPY SH_FILE
COPY ./start_sql.sh ./
COPY ./my.cnf /etc/my.cnf

# PORT
EXPOSE 3306

# BASH
CMD bash start_sql.sh
