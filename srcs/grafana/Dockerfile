FROM alpine

RUN apk update \
&& apk upgrade \
&& apk add libc6-compat curl \
&& curl 'https://dl.grafana.com/oss/release/grafana-7.2.1.linux-amd64.tar.gz' > grafana.tar.gz

RUN tar xvf grafana.tar.gz \
&& mv grafana-7.2.1 grafana

RUN curl 'https://dl.influxdata.com/telegraf/releases/telegraf-1.16.0_linux_i386.tar.gz' > telegraf.tar.gz && \
    tar xvf telegraf.tar.gz && \
    mv 'telegraf-1.16.0' telegraf
COPY telegraf.conf /etc/telegraf/telegraf.conf

COPY srcs/init.sh /
RUN chmod +x init.sh

EXPOSE 3000

CMD /init.sh

#CMD tail -f /dev/null
