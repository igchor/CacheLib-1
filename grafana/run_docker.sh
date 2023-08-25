#!/bin/bash

sh stop_workload.sh

docker run --privileged --name=cachebench -v $PWD/..:/opt/workspace:z -w /opt/workspace/ -e http_proxy=$http_proxy -e https_proxy=$https_proxy -it test_cachelib sh /opt/workspace/grafana/run_workload.sh $1
