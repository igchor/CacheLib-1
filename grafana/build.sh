#!/bin/bash

mkdir -p /opt/workspace/build
cd /opt/workspace/build

source /opt/rh/gcc-toolset-12/enable
cmake ../cachelib -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt

make -j

cd /opt/numactl
./autogen.sh
./configure
make -j
make install 
