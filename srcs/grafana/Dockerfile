FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add libc6-compat curl \
&& curl 'https://dl.grafana.com/oss/release/grafana-7.2.1.linux-amd64.tar.gz' > grafana.tar.gz

RUN tar xvf grafana.tar.gz \
&& mv grafana-7.2.1 grafana

COPY srcs/init.sh /
RUN chmod +x init.sh

EXPOSE 3000

CMD /init.sh

#CMD tail -f /dev/null
