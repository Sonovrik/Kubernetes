FROM alpine

RUN apk update
RUN apk add nginx
RUN apk add openssl
RUN apk add openrc
RUN apk add openssh
RUN apk add supervisor

RUN adduser -D -g 'www' www
RUN echo -e "mypass\nmypass\n" | adduser lmidori

RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir /run/nginx
RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -keyout /etc/nginx/ssl/nginx-selfsigned.key \
   -out /etc/nginx/ssl/nginx-selfsigned.crt \
   -subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=school/CN=my_domain"

RUN openrc default
RUN rc-service sshd start
RUN ssh-keygen -A
RUN rc-service sshd stop

RUN echo "Hello world! This is NGINX !!!" > index.html
RUN mv index.html ./www

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY  ./supervisord.conf /etc/supervisord.conf

EXPOSE 80 443 22

CMD [ "/usr/bin/supervisord", "-c", "etc/supervisord.conf" ]