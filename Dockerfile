FROM wordpress:6.7.2-apache

RUN pecl install redis \
    && docker-php-ext-enable redis

RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
    chmod +x /usr/local/bin/wp;

RUN mkdir /var/www/html/wp-content/uploads; \
    chown -R www-data:www-data /var/www/html/wp-content/uploads;

COPY wp-config.php /var/www/html/wp-config.php


