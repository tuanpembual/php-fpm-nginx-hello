FROM php:7.2-fpm

MAINTAINER estu <estu@opensuse.id>

WORKDIR /var/www/html

RUN apt-get update -y \
    && apt-get install -y nginx

RUN rm index.nginx-debian.html

COPY index.php .
COPY nginx.conf /etc/nginx/nginx.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
