Docker Image for InfluxDB
=========================

* Version: 0.8.8
* Plugins: Graphite, CollectD


		docker pull systemli/influxdb

		# simple run of influxdb
		docker run --rm -it -p 8083:8083 -p 8086:8086 systemli/influxdb
		
		# with linked ports for api, admin, graphite and collectd
		# syslog linked into the container
		# data persisted outside of the container in /opt/influxdb
		docker run -d --name influxdb \
		-p 8083:8083 -p 8086:8086 -p 2003:2003 -p 25826:25826 \
		-v /dev/log:/dev/log \
		-v /opt/influxdb:/data \
		systemli/influxdb:latest


* see Dockerfile for all exposed ports and volumes
