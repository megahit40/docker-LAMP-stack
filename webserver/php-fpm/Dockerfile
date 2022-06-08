FROM php:7.4-fpm-alpine

# copy html files from host to container. Only when build from scratch: "docker-compose up --build"
#COPY ./src/ /var/www/html/

RUN docker-php-ext-install mysqli

