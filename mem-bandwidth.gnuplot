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
set ylabel "GB/sec"
set xlabel "End of Year"

set yrange [10:1000]
set output "mem-bw.eps"
set title "Peak Memory Bandwidth Comparison"

plot 'data-sp-intel.txt' using 1:4 with linesp pt 9 ps 3.0 title "CPUs, Intel", \
     'data-sp-intel.txt' using 1:($4*0.75):6 with labels notitle, \
     'data-sp-nvidia.txt' using 1:4 with linesp pt 5 ps 3.0 title "GPUs, NVIDIA", \
     'data-sp-amd.txt' using 1:4 with linesp pt 7 ps 3.0 title "GPUs, AMD", \
     'data-sp-intel-phi.txt' using 1:4 with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-sp-nvidia.txt' using 1:($4*1.5):8 with labels rotate by 35 notitle, \
     'data-sp-amd.txt' using 1:($4*0.65):8 with labels rotate by 35 notitle, \
     'data-sp-intel-phi.txt' using 1:($4*1.25):8 with labels rotate by 35 notitle


