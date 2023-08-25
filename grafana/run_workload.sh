#!/bin/bash

cd /opt/workspace/build
make install -j

file="$(cat /etc/hostname)"
echo "Writing to $file"

mkdir -p /opt/workspace/stats/

/opt/bin/cachebench --json_test_config /opt/test_configs/small_moving_bg.json --progress 1 --progress_stats_file /opt/workspace/stats/$file --report_api_latency
