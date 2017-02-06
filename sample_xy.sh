#!/bin/bash


gmt psxy data1.csv -JX10/-10 -R-30/30/500/1000 -Bx5+l"Temperature [@+\260@+C]" -By50+l"Pressure [hpa]" -BWSne+t"(a)" -W1p,black,solid -V -P -K > figure01.ps

gmt psxy data2.csv -J -R -W1p,red,dashed -V -P -O -K >> figure01.ps

gmt pslegend -J -R -V -P -O -F+p1p -Dg5/950+w1.4i/0.6i+l1.2  << EOF >> figure01.ps
G 0.03i
N 2
S 0.3i - 0.4i - 1p,black 0.7i aaa
N 2
S 0.3i - 0.4i - 1p,red,- 0.7i bbb
EOF


gmt psconvert -A -Tf figure01.ps
gmt psconvert -A -Tg figure01.ps


