#!/bin/bash

mkdir -p /opt/workspace/build
cd /opt/workspace/build

source /opt/rh/gcc-toolset-12/enable
cmake ../cachelib -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt

make install -j

cp ../cachelib/cachebench/test_configs/hit_ratio/cdn/pop.json /opt/workspace/build
cp ../cachelib/cachebench/test_configs/hit_ratio/cdn/sizes.json /opt/workspace/build

file="$2"
echo "Writing to $file"

mkdir -p /opt/workspace/stats/

/opt/bin/cachebench --json_test_config $1 --progress 1 --progress_stats_file /opt/workspace/stats/$file --report_api_latency
