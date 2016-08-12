#!/usr/bin/gnuplot

set term postscript eps enhanced

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#000000"
set style line 3  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 4  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 5  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.15,1.15
set border linewidth 1.5

set xrange [2006.4:2014.6]
set key samplen 6 spacing 3.0
set key bottom right Left reverse
set grid lw 3
set ylabel "Watt"
set xlabel "End of Year"

set yrange [0:350]
set output "tdp.eps"
set title "Thermal Design Power"

plot 'data-sp-intel.txt' using 1:5 with linesp pt 9 ps 3.0 title "CPUs, Intel", \
     'data-sp-intel.txt' using ($1-0.4):($5-25):6 with labels rotate by 31 notitle, \
     'data-sp-nvidia.txt' using 1:5 with linesp pt 5 ps 3.0 title "GPUs, NVIDIA", \
     'data-sp-amd.txt' using 1:5 with linesp pt 7 ps 3.0 title "GPUs, AMD", \
     'data-sp-intel-phi.txt' using 1:5 with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-sp-nvidia.txt' using 1:($5-25):12 with labels rotate by 31 notitle, \
     'data-sp-amd.txt' using 1:($5+22):12 with labels rotate by 31 notitle, \
     'data-sp-intel-phi.txt' using 1:($5+26):6 with labels rotate by 31 notitle


