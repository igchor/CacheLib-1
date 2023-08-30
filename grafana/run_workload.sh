#!/bin/bash

mkdir -p /opt/workspace/build
cd /opt/workspace/build

source /opt/rh/gcc-toolset-12/enable
CXX=gcc cmake ../cachelib -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt

make install -j

file="$(cat /etc/hostname)"
echo "Writing to $file"

mkdir -p /opt/workspace/stats/

/opt/bin/cachebench --json_test_config $1 --progress 1 --progress_stats_file /opt/workspace/stats/$file --report_api_latency
