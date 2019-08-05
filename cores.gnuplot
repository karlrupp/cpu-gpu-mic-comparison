#!/usr/bin/gnuplot

set term postscript eps enhanced color

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 3  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 4  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.40,1.30
set border linewidth 1.5

set logscale y
set format y "10^{%L}"
set xrange [2006.4:2018.6]
set key samplen 6 spacing 3.0
set key bottom right
set grid lw 3
set ylabel "Physical Cores/Multiprocessors"
set xlabel "End of Year"

set yrange [1:100]
set output "cores.eps"
set title "Number of Physical Cores/Multiprocessors, High-End Hardware"

# Labels AMD
set label "HD 3870"         at 2007,6  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,7  center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,15 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,31 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,31 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,40 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,32 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,33 center rotate by 33 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,37 center rotate by 30 textcolor rgb "#971c00"
set label "MI25"            at 2016,45 center rotate by 30 textcolor rgb "#971c00"
set label "MI60"            at 2018,48 center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"         at 2007,3 center rotate by 30 textcolor rgb "#005197"
set label "X5492"         at 2008,3 center rotate by 30 textcolor rgb "#005197"
set label "W5590"         at 2009,3 center rotate by 30 textcolor rgb "#005197"
set label "X5680"         at 2010,5 center rotate by 30 textcolor rgb "#005197"
set label "X5690"         at 2011,5 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"       at 2012,6 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2"    at 2013,9 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2014,22 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2015,15  center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4"    at 2016,17 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8180" at 2017,23 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 9282" at 2018,42 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "8800 GTS"       at 2007,20 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,40 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,40 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,12 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,10 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,12 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,18 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,12  center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,31 center rotate by 33 textcolor rgb "#00D317"
set label "Titan X"        at 2016,40 center rotate by 30 textcolor rgb "#00D317"
set label "Titan V"        at 2017,92 center rotate by 00 textcolor rgb "#00D317"
set label "Titan RTX"      at 2018,87 center rotate by 00 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,70 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.7,85 center rotate by 00

plot 'data-intel.txt'     using 1:4 with linesp pt 9  ps 3.0 title "INTEL Xeon CPUs", \
     'data-sp-nvidia.txt' using 1:6 with linesp pt 5  ps 3.0 title "NVIDIA GeForce GPUs", \
     'data-amd.txt'       using 1:7 with linesp pt 7  ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:4 with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"


