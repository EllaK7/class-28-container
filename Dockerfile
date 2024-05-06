FROM php:8.2-cli

RUN mv "PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY . /var/www/html

WORKDIR /var/www/html/

CMD [ "php", "-S", "0.0.0.0:80", "./router.php" ]
