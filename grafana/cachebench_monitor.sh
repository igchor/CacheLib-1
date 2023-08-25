#!/bin/bash

host_public_ip=$(hostname -I | awk '{print $1}')
echo "Using the '$host_public_ip' IP as the IP for 'pushgateway'"

echo "Monitoring file: $2"

pushgateway_ip=$host_public_ip
pushgateway_port="$1"

while true
do
   curl --noproxy '*' -s -X PUT "http://$pushgateway_ip:$pushgateway_port/api/v1/admin/wipe"
   python parse.py $2 | \
          curl --noproxy '*' -s --data-binary @- "http://$pushgateway_ip:$pushgateway_port/metrics/job/pushgateway/instance/$host_public_ip:$pushgateway_port"
   sleep 1
done
#done > ./cachebench_monitor.log
