#!/bin/bash

sh stop_workload.sh

docker run -d --privileged --name=cachebench_1 -v $PWD/..:/opt/workspace:z -w /opt/workspace/ -e http_proxy=$http_proxy -e https_proxy=$https_proxy -it ghcr.io/pmem/cachelib:centos-8streams-devel sh /opt/workspace/grafana/run_workload_dram.sh $1 "$2#1"
docker run -d --privileged --name=cachebench_2 -v $PWD/..:/opt/workspace:z -w /opt/workspace/ -e http_proxy=$http_proxy -e https_proxy=$https_proxy -it ghcr.io/pmem/cachelib:centos-8streams-devel sh /opt/workspace/grafana/run_workload_hmsdk.sh $1 "$2#2"
