#!/usr/bin/gnuplot

set term postscript eps enhanced color

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 3  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 4  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.15,1.15
set border linewidth 1.5

set logscale y
set format y "10^{%L}"
set xrange [2006.4:2016.6]
set key samplen 6 spacing 3.0
set key bottom right
set grid lw 3
set ylabel "GB/sec"
set xlabel "End of Year"

set yrange [10:1000]
set output "mem-bw.eps"
set title "Theoretical Peak Memory Bandwidth Comparison"

# Labels AMD
set label "HD 3870"         at 2007,90 center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,150 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,210 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,240 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,240 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,370 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,350 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,420 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,420 center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"      at 2007,20 center rotate by 30 textcolor rgb "#005197"
set label "X5492"      at 2008,20 center rotate by 30 textcolor rgb "#005197"
set label "W5590"      at 2009,25 center rotate by 30 textcolor rgb "#005197"
set label "X5680"      at 2010,25 center rotate by 30 textcolor rgb "#005197"
set label "X5690"      at 2011,25 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"    at 2012,40 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2" at 2013,45 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2014,50 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2015,50 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4" at 2016,55 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,80 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009,80 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2010,110 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,140 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,160 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,170 center rotate by 00 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014.5,245 center rotate by 00 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016,850 center rotate by 00 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,190 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2016,450 center rotate by 55

plot 'data-intel.txt'     using 1:5 with linesp pt  9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-dp-nvidia.txt' using 1:4 with linesp pt  5 ps 3.0 title "NVIDIA Tesla GPUs", \
     'data-amd.txt'       using 1:5 with linesp pt  7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:5 with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"


