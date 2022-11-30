#!/bin/sh
cmd="node -v"
$cmd
if [ $? -ne 0 ]
then
    exit 1
fi

pkill -f 'node*.*.serve -s'
rm -rf build
mkdir build
mkdir build/o2vue
mv dist/index.html build
mv dist/* build/o2vue
rm -rf dist

echo "serve -s build -p 8081"
serve -s build -p 8081 > /dev/null 2>&1
if [ $? -ne 0 ]
then
	exit 1
fi
