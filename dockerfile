FROM webdevops/php-apache-dev:8.2

ENV COMPOSER_ALLOW_SUPERUSER=1

ENV WEB_DOCUMENT_ROOT=/app/web

COPY ./ /app

WORKDIR /app

RUN composer install

RUN chmod 777 /app/web/sites/default/files

RUN chmod 777 /app/web/sites/default/settings.php