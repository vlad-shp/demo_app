#!/bin/sh
node -v
if [ $? -ne 0 ]
then
    exit 64
fi

pkill -f 'node*.*.serve -s'
rm -rf build
mkdir build
mkdir build/o2vue
mv dist/index.html build
mv dist/* build/o2vue
rm -rf dist

echo "serve -s build -p 8081"
serve -v
if [ $? -ne 0 ]
then
	exit 64
fi
serve -s build -p 8081 > /dev/null &