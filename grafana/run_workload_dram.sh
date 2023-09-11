#!/bin/bash

mkdir -p /opt/workspace/build
cd /opt/workspace/build

source /opt/rh/gcc-toolset-12/enable
cmake ../cachelib -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt

make install -j

file="$2"
echo "Writing to $file"

mkdir -p /opt/workspace/stats/

sed -i -e 's/"memoryTiers"/"ignore"/' $1

/opt/bin/cachebench --json_test_config $1 --progress 1 --progress_stats_file /opt/workspace/stats/$file --report_api_latency
