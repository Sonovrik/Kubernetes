# INSTALL ALPHINE LINUX
FROM alpine:latest

# UPDATE SOFTWARE
RUN apk update
RUN apk add openssl
RUN apk add bash
RUN apk add openrc

# INSTALL NGINX
RUN apk add nginx

# CREATE FOLDER
RUN mkdir /etc/nginx/ssl; mkdir -p /run/nginx/
RUN chmod 700 /etc/ssl

# COPY SOURCES
COPY ./start_nginx.sh ./
COPY ./nginx.conf ./

# MOVE CONFIG
RUN mv ./nginx.conf /etc/nginx/

# CREATE USER AND USER FOULDER
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

# CREATE INDEX
RUN echo "Hello world" > index.html
RUN mv index.html ./www

# DELETE DEFINE SETTINGS
RUN rm -rf /etc/nginx/sites-enabled/default

# CREATE SSL KEYS
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -keyout /etc/nginx/ssl/nginx-selfsigned.key \
   -out /etc/nginx/ssl/nginx-selfsigned.crt \
   -subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=school/CN=my_domain"

# BASH
CMD bash start_nginx.sh