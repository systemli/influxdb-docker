Docker Image for InfluxDB
=========================

* Version: 0.8.6
* Plugins: Graphite, CollectD


    docker build -t systemli/influxdb .

    docker run --rm -it -p 8083:8083 -p 8086:8086 systemli/influxdb

* see Dockerfile for all exposed ports and volumes
