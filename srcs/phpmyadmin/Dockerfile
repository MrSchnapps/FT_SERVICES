FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add nginx openrc curl \
    php7 php7-fpm php7-opcache \
    php7-gd php7-mysqli php7-zlib php7-curl \
    php7-mbstring php7-json php7-session \
&& curl 'https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.zip' \
    > phpMyAdmin.zip

RUN  unzip phpMyAdmin.zip \
&& rm -rf var/www \
&& rm -rf phpMyAdmin.zip \
&& mv phpMyAdmin-5.0.2-all-languages phpMyAdmin \
&& mv phpMyAdmin var/www

COPY srcs/nginx.conf /etc/nginx/conf.d
RUN mkdir -p /run/nginx \
&& rm /etc/nginx/conf.d/default.conf

COPY srcs/init.sh /
RUN chmod +x init.sh

EXPOSE 5000

CMD "/init.sh"