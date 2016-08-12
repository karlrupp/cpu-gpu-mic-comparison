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

set logscale y
set format y "10^{%L}"
set xrange [2006.4:2014.6]
set key samplen 6 spacing 3.0
set key top left Left reverse
set grid lw 3
set ylabel "Processing Elements (Cores, Threads)"
set xlabel "End of Year"

set yrange [1:10000]
set output "cores-sp.eps"
set title "Number of Processing Elements, Single Precision High-End Hardware"

plot 'data-sp-intel.txt' using 1:3 with linesp pt 9 ps 3.0 title "CPUs, Intel", \
     'data-sp-intel.txt' using 1:($3*1.6):6 with labels rotate by 28 notitle, \
     'data-sp-nvidia.txt' using 1:3 with linesp pt 5 ps 3.0 title "GPUs, NVIDIA", \
     'data-sp-amd.txt' using 1:3 with linesp pt 7 ps 3.0 title "GPUs, AMD", \
     'data-sp-intel-phi.txt' using 1:3 with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-sp-nvidia.txt' using 1:($3*0.5):9 with labels rotate by 28 notitle, \
     'data-sp-amd.txt' using 1:($3*1.9):9 with labels rotate by 28 notitle, \
     'data-sp-intel-phi.txt' using 1:($3*1.5):6 with labels rotate by 28 notitle

set yrange [1:10000]
set output "cores-dp.eps"
set title "Number of Processing Elements, Double Precision High-End Hardware"

plot 'data-dp-intel.txt' using 1:3 with linesp pt 9 ps 3.0 title "CPUs, Intel", \
     'data-dp-intel.txt' using 1:($3*1.6):6 with labels rotate by 28 notitle, \
     'data-dp-nvidia.txt' using 1:3 with linesp pt 5 ps 3.0 title "GPUs, NVIDIA", \
     'data-dp-amd.txt' using 1:3 with linesp pt 7 ps 3.0 title "GPUs, AMD", \
     'data-dp-intel-phi.txt' using 1:3 with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-dp-nvidia.txt' using 1:($3*0.6):6 with labels rotate by 28 notitle, \
     'data-dp-amd.txt' using 1:($3*1.9):6 with labels rotate by 28 notitle, \
     'data-dp-intel-phi.txt' using 1:($3*1.5):6 with labels rotate by 28 notitle

