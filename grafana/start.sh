#!/bin/sh

if [ "$#" -ne 3 ];
then
  echo
  echo "Usage: $0 pcm-sensor-server-up:port pushgateway-server-ip:port grafana_port"
  exit 1
fi

mkdir -p grafana_volume/dashboards
mkdir -p prometheus_volume

chmod -R 777 *_volume

mkdir -p provisioning/datasources
cp automatic_prometheus.yml provisioning/datasources/automatic.yml

echo "creating prometheus.yml for $1 $2";
sed "s#PCMSENSORSERVER#$1#g" prometheus.yml.template > prometheus.yml
sed -i "s#PUSHGATEWAYSERVER#$2#g" prometheus.yml
echo Downloading PCM dashboard
curl -o grafana_volume/dashboards/pcm-dashboard.json $1/dashboard/prometheus

echo "Starting pushgateway on port $(echo $2 | cut -d ":" -f 2)"
sh start-pushgateway.sh $(echo $2 | cut -d ":" -f 2)
echo Starting prometheus
docker run --name prometheus -d -p 9090:9090 -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml -v $PWD/prometheus_volume:/prometheus prom/prometheus
echo Starting grafana
docker run -d --link=prometheus --name=grafana -p $3:3000 -v $PWD/grafana_volume:/var/lib/grafana -v $PWD/provisioning:/etc/grafana/provisioning grafana/grafana

echo Start browser at http://localhost:$3/ and login with admin user, password admin

