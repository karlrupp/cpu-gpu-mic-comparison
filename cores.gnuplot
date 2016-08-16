#!/usr/bin/gnuplot

set term postscript eps enhanced

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 3  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 4  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.1,1.1
set border linewidth 1.5

set logscale y
set format y "10^{%L}"
set xrange [2006.4:2017.5]
set key samplen 6 spacing 3.0
set key top left Left reverse
set grid lw 3
set ylabel "Physical Cores/Multiprocessors"
set xlabel "End of Year"

set yrange [1:1000]
set output "cores.eps"
set title "Number of Physical Cores/Multiprocessors, High-End Hardware"

# Labels AMD
set label "HD 3870"         at 2007,3  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,15 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,30 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,35 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,35 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012.2,80 center rotate by 60 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,30 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,30 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,34 center rotate by 20 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"      at 2007,2 center rotate by 30 textcolor rgb "#005197"
set label "X5492"      at 2008,3 center rotate by 30 textcolor rgb "#005197"
set label "W5590"      at 2009,3 center rotate by 30 textcolor rgb "#005197"
set label "X5680"      at 2010,4 center rotate by 30 textcolor rgb "#005197"
set label "X5690"      at 2011,4 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"    at 2012,5 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2" at 2013,8 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2014,10 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2015,8  center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4" at 2016,15 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "8800 GTS"       at 2007,10 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,7  center rotate by 30 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,7  center rotate by 00 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,11 center rotate by 00 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,11 center rotate by 00 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,12 center rotate by 00 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,18 center rotate by 00 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,7  center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,12 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla P100" at 2016,35 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2013.4,180 center rotate by 60
set label "Xeon Phi 7120 (KNC)" at 2014.4,180 center rotate by 60
set label "Xeon Phi 7120 (KNC)" at 2015.4,180 center rotate by 60
set label "Xeon Phi 7290 (KNL)" at 2016.4,200 center rotate by 60

plot 'data-intel.txt'     using 1:4 with linesp pt 9  ps 3.0 title "Xeon CPUs, Intel", \
     'data-sp-nvidia.txt' using 1:6 with linesp pt 5  ps 3.0 title "GeForce GPUs, NVIDIA", \
     'data-amd.txt'       using 1:7 with linesp pt 7  ps 3.0 title "Radeon GPUs, AMD", \
     'data-intel-phi.txt' using 1:4 with linesp pt 11 ps 3.0 title "Xeon Phi, Intel"


