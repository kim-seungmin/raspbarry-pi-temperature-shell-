#!/bin/bash

cpu=$(</sys/class/thermal/thermal_zone0/temp)
if (( cpu/1000 > 60 ))
then
         echo "$(date) GPU => $(/opt/vc/bin/vcgencmd measure_temp) CPU => $((cpu/1000))'C" >> temp.txt
else
        echo "no recorded GPU => $(/opt/vc/bin/vcgencmd measure_temp) CPU => $((cpu/1000))'C"
fi
