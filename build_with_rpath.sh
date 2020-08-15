#!bin/bash
set -ex
cd workspace

make

ldd ./bin/hello-world

readelf ./bin/hello-world -d

ls  -lah
ls ./lib -lah

#make clean
