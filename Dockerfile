FROM php:7.4-fpm

WORKDIR /var/www/html
COPY . /var/www/html/

EXPOSE 9000
CMD ["php-fpm"]