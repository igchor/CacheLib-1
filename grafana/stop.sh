
for c in grafana pushgateway prometheus; do

	id=`docker ps -a -q --filter="name=$c" --format="{{.ID}}"`
	if [ ! -z "$id" ]
	then
	   echo Stopping and deleting $c
	   docker rm $(docker stop $id)
	fi
done

