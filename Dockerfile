FROM ubuntu:14.04

MAINTAINER louis <louis@systemli.org>

ENV DEBIAN_FRONTEND noninteractive

ENV INFLUXDB_VERSION 0.8.8

RUN apt-get update && apt-get install -y curl && \
curl -s -o /tmp/influxdb_latest_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
dpkg -i /tmp/influxdb_latest_amd64.deb && \
rm /tmp/influxdb_latest_amd64.deb && \
rm -rf /var/lib/apt/lists/*

ADD config.toml /config/config.toml

ENV CONFIG_FILE /config/config.toml

# admin
EXPOSE 8083

# api
EXPOSE 8086

# graphite
EXPOSE 2003

# collectd
EXPOSE 25826

VOLUME ["/data"]

CMD /usr/bin/influxdb -config ${CONFIG_FILE:-/config/config.toml}
