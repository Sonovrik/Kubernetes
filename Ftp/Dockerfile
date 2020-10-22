FROM alpine:latest

# UPDATE SOFTWARE
RUN apk update
RUN apk add openssl
RUN apk add bash
RUN apk add openrc

# INSTALL FTP
RUN apk add vsftpd

RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /www

COPY vsftpd.conf ./etc/vsftpd/vsftpd.conf
COPY start_ftp.sh .

# CREATE SSL KEYS
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -keyout /etc/ssl/ftp.key \
   -out /etc/ssl/ftp.crt \
   -subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=school/CN=my_domain"

EXPOSE 21 20 21000-22000
