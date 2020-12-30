FROM alpine

RUN apk update \
&& apk upgrade
RUN apk add --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    pure-ftpd openssl curl

RUN adduser -D -h /home/jules jules && \
    echo -e 'pass\npass' | passwd jules && \
    echo -e 'pass\npass' | pure-pw useradd jules -u jules -g jules -d /home/jules

RUN openssl req -x509 -nodes -days 7300 -subj "/C=FR/ST=fr/L=Belgiaque/O=19/CN=judecuyp" \
    -newkey rsa:2048 -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem

COPY srcs/init.sh /
RUN chmod +x init.sh

EXPOSE 21
EXPOSE 21000
EXPOSE 21001
EXPOSE 21002
EXPOSE 21003
EXPOSE 21004
EXPOSE 21005

CMD /init.sh