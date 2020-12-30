FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add nginx openrc curl \
    php7 php7-fpm php7-opcache \
    php7-gd php7-mysqli php7-zlib php7-curl \
    php7-mbstring php7-json php7-session \
&& curl  'https://wordpress.org/latest.tar.gz' > wordpress.tar.gz

RUN tar -xvf wordpress.tar.gz \
&& rm -rf var/www \
&& mv wordpress var/www

COPY srcs/nginx.conf /etc/nginx/conf.d
RUN mkdir -p /run/nginx \
&& rm /etc/nginx/conf.d/default.conf

COPY srcs/wp-config.php /var/www/wp-config.php

COPY srcs/init.sh /
RUN chmod +x init.sh

EXPOSE 5050

CMD /init.sh