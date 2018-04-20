# Telemetry

## Introduction

mF2C will use the Snap telemetry framework to capture performance metrics on each node. The metrics are currently stored in a TSDB (Influx).

# Installation instructions

The Docker compose script will create a container with 2 services
-	Snap framework: which will run a list of telemetry probes
-	InfluxDB: a Time Series database

```
$ docker-compose up 
$ ./download.sh
```
