#!/bin/bash

source ./config.sh

host_public_ip=$(hostname -I | awk '{print $1}')
echo "Using the '$host_public_ip' IP as the IP for 'pushgateway'"

while true
do
   curl --noproxy '*' -s -X PUT "http://$PUSHGATEWAY_SERVER_IP/api/v1/admin/wipe"
   id=`docker ps -a -q --filter="name=cachebench" --format="{{.ID}}"`
   if [ ! -z "$id" ]
   then
      file="$PWD/../stats/$id"
      python parse.py $file | \
               curl --noproxy '*' -s --data-binary @- "http://$PUSHGATEWAY_SERVER_IP/metrics/job/pushgateway/instance/$host_public_ip:$PUSHGATEWAY_PORT"
   fi
   sleep 1 
done
