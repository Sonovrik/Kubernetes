FROM alpine:latest

RUN apk update
RUN apk add vsftpd openssl

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
ADD start.sh ./

RUN openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -subj \
    "/C=RU/ST=Moscow/L=Moscow/O=21 School/OU=clauren/CN=localhost" -keyout \
	/etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
RUN adduser -D admin && echo "admin:admin" | chpasswd

ENTRYPOINT ["sh", "start.sh"]

EXPOSE 20 21 21100