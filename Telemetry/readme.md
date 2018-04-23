# Telemetry

## Introduction

mF2C will use the Snap telemetry framework to capture performance metrics on each node. The metrics are currently stored in a Timeseries DB (InfluxDB).

# Installation instructions

The Docker compose script will create a container with 2 services
-	Snap framework: which will install a list of telemetry probes (see download.sh)
-	InfluxDB: a Time Series database to host the metrics

The _download.sh_ script will get all the plugins onto the local machine and then install them into the container. You can delete these downloaded files from the directory after the script has finished, ie, rm snap-plugin-*	

```
$ docker-compose up -d
$ chmod +x download.sh
$ ./download.sh
```

# Test installation
Open a browser and enter the following URL

```
http://localhost:8086/query?db=snap&q=show+measurements
```
