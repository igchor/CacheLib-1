in=`cat`

echo "${in}" | grep 'Hit Ratio' | sed 's/Hit Ratio[: ]*\([0-9.%]*\)/Hit Ratio, \1/'
echo "${in}" | grep 'Cache Find API latency p50 ' | rev | cut -d " " -f 2 | rev | awk '{print "find p50,"$1}'
echo "${in}" | grep 'Cache Find API latency p90 ' | rev | cut -d " " -f 2 | rev | awk '{print "find p90,"$1}'
echo "${in}" | grep 'Cache Find API latency p99 ' | rev | cut -d " " -f 2 | rev | awk '{print "find p99,"$1}'
echo "${in}" | grep 'Cache Find API latency p999 ' | rev | cut -d " " -f 2 | rev | awk '{print "find p999,"$1}'

echo "${in}" | grep 'Cache Allocate API latency p50 ' | rev | cut -d " " -f 2 | rev | awk '{print "allocate p50,"$1}'
echo "${in}" | grep 'Cache Allocate API latency p90 ' | rev | cut -d " " -f 2 | rev | awk '{print "allocate p90,"$1}'
echo "${in}" | grep 'Cache Allocate API latency p99 ' | rev | cut -d " " -f 2 | rev | awk '{print "allocate p99,"$1}'
echo "${in}" | grep 'Cache Allocate API latency p999 ' | rev | cut -d " " -f 2 | rev | awk '{print "allocate p999,"$1}'

echo "${in}" | grep -E '^get[ :]*' | sed 's/get[ :]*\([0-9,]*\)\/s[ ,0-9%.a-z:]*/\1/' | sed 's/,/./g' | awk '{print "get throughput,"$1}'
echo "${in}" | grep -E '^set[ :]*' | sed 's/set[ :]*\([0-9,]*\)\/s[ ,0-9%.a-z:]*/\1/' | sed 's/,/./g' | awk '{print "set throughput,"$1}'
