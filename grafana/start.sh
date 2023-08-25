#!/bin/sh

source ./config.sh

rm -rf grafana_volume
rm -rf prometheus_volume
mkdir -p grafana_volume/dashboards/
mkdir -p grafana_volume/plugins
mkdir -p prometheus_volume

chmod -R 777 *_volume

mkdir -p provisioning/datasources
cp automatic_prometheus.yml provisioning/datasources/automatic.yml

echo "creating prometheus.yml for $PCM_SENSOR_SERVER_IP $PUSHGATEWAY_SERVER_IP";
sed "s#PCMSENSORSERVER#$PCM_SENSOR_SERVER_IP#g" prometheus.yml.template > prometheus.yml
sed -i "s#PUSHGATEWAYSERVER#$PUSHGATEWAY_SERVER_IP#g" prometheus.yml
sed "s#CONTROL_SERVER#http://$CONTROL_SERVER_IP#g" cachebench-dashboard.json > grafana_volume/dashboards/cachebench-dashboard.json

echo Downloading PCM dashboard
curl -o grafana_volume/dashboards/pcm-dashboard.json $PCM_SENSOR_SERVER_IP/dashboard/prometheus

echo Starting pushgateway
docker run --name pushgateway --restart=unless-stopped -d -p $PUSHGATEWAY_PORT:9091 \
      prom/pushgateway:latest \
      '--web.enable-admin-api'

echo Start browser at http://localhost:$PUSHGATEWAY_PORT/ and see the options.

unzip plugin.zip
mv cloudspout-button-panel grafana_volume/plugins/cloudspout-button-panel

echo Starting prometheus
docker run --name prometheus -d -p 9090:9090 -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml -v $PWD/prometheus_volume:/prometheus prom/prometheus
echo Starting grafana
docker run -d --link=prometheus --name=grafana -p $GRAFANA_PORT:3000 -v $PWD/grafana_volume:/var/lib/grafana -v $PWD/provisioning:/etc/grafana/provisioning grafana/grafana

echo Start browser at http://localhost:$GRAFANA_PORT/ and login with admin user, password admin

#kill $(pidof cachebench_monitor)
sh cachebench_monitor.sh &
python3 server.py -p $CONTROL_PORT -o "http://$GRAFNA_SERVER_IP"

