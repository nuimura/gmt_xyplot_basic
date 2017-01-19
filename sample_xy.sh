#!/bin/bash


gmt psxy data1.csv -JX10/-10 -R-30/30/500/1000 -Bx5+l"Temperature [C@+\260@+]" -By50+l"Pressure [hpa]" -BWSne+t"(a)" -W1p,black -V -P -K > figure01.ps

gmt psxy data2.csv -J -R -W1p,red -V -P -O >> figure01.ps


gmt psconvert -A -Tf figure01.ps
gmt psconvert -A -Tg figure01.ps


