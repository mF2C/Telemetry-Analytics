# download snap framework
wget http://snap.ci.snap-telemetry.io/snap/latest_build/linux/x86_64/snaptel -O snaptel
chmod +x snaptel

# download required plugins
# collectors
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-psutil/latest/linux/x86_64/snap-plugin-collector-psutil -O snap-plugin-collector-psutil
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-meminfo/latest/linux/x86_64/snap-plugin-collector-meminfo -O snap-plugin-collector-meminfo
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-cpu/latest/linux/x86_64/snap-plugin-collector-cpu -O snap-plugin-collector-cpu
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-docker/latest/linux/x86_64/snap-plugin-collector-docker -O snap-plugin-collector-docker
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-disk/latest/linux/x86_64/snap-plugin-collector-disk -O snap-plugin-collector-disk 
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-collector-interface/latest/linux/x86_64/snap-plugin-collector-interface -O snap-plugin-collector-interface
# publishers
wget http://snap.ci.snap-telemetry.io/plugins/snap-plugin-publisher-influxdb/latest/linux/x86_64/snap-plugin-publisher-influxdb -O snap-plugin-publisher-influxdb

# load plugins 
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-psutil
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-cpu
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-meminfo
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-docker
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-disk
./snaptel --url http://snap:8181 plugin load snap-plugin-collector-interface
./snaptel --url http://snap:8181 plugin load snap-plugin-publisher-influxdb

# configure the plugins
./snaptel --url http://snap:8181 task create -t task.json
