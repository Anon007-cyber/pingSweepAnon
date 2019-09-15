#!/bin/bash
if [ "$1" == "" ]
then
echo "Usage: ./pingsweepAnon.sh [network]"
echo "Example : ./pingsweepAnon.sh 192.168.1"
else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//' &
done
fi
