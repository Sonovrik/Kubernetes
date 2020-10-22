FROM alpine:latest

# INSTALL SOFTWARE
RUN apk update

# INSTALL PHP PLAGINS
RUN apk add php7 php7-fpm php7-opcache php7-gd \
    php7-mysqli php7-zlib php7-curl php7-mbstring \
    php7-json php7-session

# COPY FILES
COPY config.inc.php .
COPY start_php.sh .

# DOWNLOAD PHP
ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz ./

# OPEN, DELETE AND MOVE PHP
RUN mkdir /www
RUN tar -xf ./phpMyAdmin-5.0.4-english.tar.gz
RUN mv phpMyAdmin-5.0.4-english phpmyadmin
RUN rm phpMyAdmin-5.0.4-english.tar.gz
RUN mv /phpmyadmin ./www
RUN mv /config.inc.php /www/phpmyadmin

# PORT
EXPOSE 5000

CMD [ "sh", "start_php.sh" ]
