FROM    php:5.5-apache

ENV     REFRESHED_AT    2016-07-20

RUN     apt-get update && apt-get install -y \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libmcrypt-dev \
            libpng12-dev

RUN     docker-php-ext-configure gd \
            --with-freetype-dir=/usr/include/ \
            --with-jpeg-dir=/usr/include/ \
        &&  docker-php-ext-install \
            gd  \
            iconv \
            mcrypt \
            mysqli \
            pdo_mysql

RUN     usermod  www-data    -u 1000

RUN     mkdir   -p  /var/www/simple-onethink
RUN     mkdir   -p  /var/www/Runtime    &&  chmod   777 /var/www/Runtime

VOLUME      ["/var/www/html"]
VOLUME      ["/var/www/simple-onethink"]
