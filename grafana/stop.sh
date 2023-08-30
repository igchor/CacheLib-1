
for c in grafana pushgateway prometheus cachebench; do

	id=`docker ps -a -q --filter="name=$c" --format="{{.ID}}"`
	if [ ! -z "$id" ]
	then
	   echo Stopping and deleting $c
	   docker rm $(docker stop $id)
	fi
done

pkill -f cachebench_monitor.sh
pkill -f pcm-sensor-server
