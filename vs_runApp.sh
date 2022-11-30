#!/bin/sh
cmb="npm -v"
$cmd
status=$?
if [ $status -eq 0 ] then 
	echo "$cmd"
else
	echo "node js not installed!"
	exit $status
fi

pkill -f 'node*.*.serve -s'
rm -rf build
mkdir build
mkdir build/o2vue
mv dist/index.html build
mv dist/* build/o2vue
rm -rf dist
serve -s build -p 8081 > /dev/null 2>&1 &