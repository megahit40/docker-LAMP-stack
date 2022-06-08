FROM httpd:2.4-alpine

# copy html files from host to container. Only when build from scratch: "docker-compose up --build"  
#COPY ./src/ /var/www/html/

# Copy apache vhost file to proxy php requests to php-fpm container
COPY ./config/virtual_host.conf /usr/local/apache2/conf/virtual_host.conf
RUN echo "Include /usr/local/apache2/conf/virtual_host.conf" \
    >> /usr/local/apache2/conf/httpd.conf
