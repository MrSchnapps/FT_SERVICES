FROM alpine

RUN apk update \
&& apk upgrade \

COPY srcs/init.sh /
RUN chmod +x init.sh

CMD /init.sh