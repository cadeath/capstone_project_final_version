FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt update
RUN apt install -y libzip-dev zip unzip \
    libpng-dev libonig-dev \
    libxml2-dev

RUN docker-php-ext-install \
    zip pdo_mysql gd \
    mbstring tokenizer \
    json xml 

RUN docker-php-ext-enable mysqli


COPY . /var/www/html/

EXPOSE 9000
CMD ["php-fpm"]