FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add nginx \
&& apk add openrc --no-cache\
&& apk add openssh \
&& apk add openssl

#Create user
# -D =  No password
# -g = 
RUN adduser -D -g 'www' www

RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

COPY srcs/nginx.conf /etc/nginx/nginx.conf
COPY srcs/index.html /www/index.html
#EXPOSE 22
EXPOSE 80
#EXPOSE 443

COPY srcs/init.sh /

CMD ./init.sh && tail -f /dev/null