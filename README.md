Docker Image for InfluxDB
=========================

[![image](http://dockeri.co/image/systemli/influxdb)](https://registry.hub.docker.com/u/systemli/influxdb/)


* **Latest Version: [0.9.1](https://github.com/systemli/influxdb-docker/tree/master/0.9.1)**
* Plugins: Graphite, CollectD, OpenTSDB


		docker pull systemli/influxdb

		# simple run of influxdb
		docker run --rm -it -p 8083:8083 -p 8086:8086 systemli/influxdb

* see Dockerfile in subdirectories for all exposed ports, volumes and run command
