#!/bin/bash
#echo "afissemammita" >> /root/ninuxstats/rrds/prova.txt
APP_DIR="/usr/src/ninuxstats/"
cd $APP_DIR
for i in $(wget -q http://127.0.0.1:2006/route -O -| grep "/32" |  cut -d "/" -f 1 ); do 
	echo $i
	./rrd2.sh $i > rrd.log 2> rrd.err& 
done
