FROM alpine:latest

# INSTALL SOFTWARE
RUN apk update

# INSTALL PHP PLAGINS
RUN apk add php7 php7-fpm php7-opcache php7-gd \
    php7-mysqli php7-zlib php7-curl php7-mbstring \
    php7-json php7-session

# DOWNLOAD WORDPRESS
ADD https://wordpress.org/wordpress-5.5.1.tar.gz ./

# COPY FILES
COPY start_wp.sh .
COPY wp-config.php .

RUN mkdir www
RUN tar -xf ./wordpress-5.5.1.tar.gz -C ./www/
RUN rm -rf wordpress-5.5.1.tar.gz
RUN mv wp-config.php ./www/wordpress/


CMD [ "sh", "start_wp.sh" ]

EXPOSE 5050