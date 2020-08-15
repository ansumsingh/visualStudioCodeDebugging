#!bin/bash
cd workspace

make

echo "before setting LD_LIBRARY_PATH"

ldd hello-world

export LD_LIBRARY_PATH=$(pwd)/libmyfunction:$LD_LIBRARY_PATH

echo "after setting LD_LIBRARY_PATH"

ldd hello-world

./hello-world


