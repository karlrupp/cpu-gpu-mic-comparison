#!/usr/bin/gnuplot

set term postscript eps enhanced

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 3  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 4  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.15,1.15
set border linewidth 1.5

set xrange [2006.4:2016.6]
set key samplen 6 spacing 3.0
set key bottom right Left reverse
set grid lw 3
set ylabel "Watt"
set xlabel "End of Year"

set yrange [0:350]
set output "tdp.eps"
set title "Thermal Design Power"

# Labels AMD
set label "HD 3870"         at 2007,90 center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,170 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,250 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,270 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,270 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,280 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,270 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,260 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,255 center rotate by 20 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"      at 2007,130 center rotate by 30 textcolor rgb "#005197"
set label "X5492"      at 2008,130 center rotate by 30 textcolor rgb "#005197"
set label "W5590"      at 2009,115 center rotate by 30 textcolor rgb "#005197"
set label "X5680"      at 2010,115 center rotate by 30 textcolor rgb "#005197"
set label "X5690"      at 2011,115 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"    at 2012,115 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2" at 2013,115 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2014,120 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2015,120 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4" at 2016,120 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,205 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009,170 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2010,220 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,220 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,210 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,225 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014,215 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2015,215 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016.2,275 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,310 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.8,225 center rotate by 30

plot 'data-intel.txt'     using 1:6 with linesp pt  9 ps 3.0 title "Xeon CPUs, Intel", \
     'data-dp-nvidia.txt' using 1:5 with linesp pt  5 ps 3.0 title "Tesla GPUs, NVIDIA", \
     'data-amd.txt'       using 1:6 with linesp pt  7 ps 3.0 title "Radeon GPUs, AMD", \
     'data-intel-phi.txt' using 1:6 with linesp pt 11 ps 3.0 title "Xeon Phis, Intel"


