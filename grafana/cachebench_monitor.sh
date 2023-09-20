#!/bin/bash

source ./config.sh

host_public_ip=$(hostname -I | awk '{print $1}')
echo "Using the '$host_public_ip' IP as the IP for 'pushgateway'"

wipe_count=0
while true
do
   if [ "$wipe_count" -eq 10 ]; then
      curl --noproxy '*' -s -X PUT "http://$PUSHGATEWAY_SERVER_IP/api/v1/admin/wipe"
      wipe_count=0
   fi

   wipe_count=$((wipe_count+1))

   timestamp=$(cat $PWD/../stats/timestamp)

   if [ -z "$timestamp" ]; then
      sleep 1
      continue 
   fi

   find $PWD/../stats/ -type f | while read -r filename
   do
      if [ ! -z "$filename" ]
      then
         echo $filename
         python parse.py $filename $timestamp | \
                  curl --noproxy '*' -s --data-binary @- "http://$PUSHGATEWAY_SERVER_IP/metrics/job/pushgateway/instance/$host_public_ip:$PUSHGATEWAY_PORT" &
      fi
   done
   sleep 1
done
