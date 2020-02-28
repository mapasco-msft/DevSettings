#!/bin/bash

delay=5

while [[ 1 ]]; do
	. ~/i3/setDisplays.sh
	sleep $delay
	#echo $SCREEN_STATE
done
