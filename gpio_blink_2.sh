#!/bin/bash

GPIO_PATH=/sys/class/gpio/gpio2
TRUE=1
FALSE=0

echo 2 > /sys/class/gpio/export
echo out > $GPIO_PATH/direction

while :
do
	echo 0 > $GPIO_PATH/value
	sleep 0.5
	echo 1 > $GPIO_PATH/value
	sleep 0.5
	echo 0 > $GPIO_PATH/value
	
done
