#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#1F1F1F}"
else
   if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
   then	
    	echo "%{F#8F8F8F}"
   fi
  echo "%{F#FFFFFF}"
  device=`bluetoothctl info | grep Alias: | sed 's/Alias://g'`
fi
