FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add mysql mysql-client

COPY srcs/init.sh /
RUN chmod +x init.sh

CMD /init.sh