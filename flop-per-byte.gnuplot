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
set xrange [2006.4:2014.6]
set key samplen 6 spacing 3.0
set key bottom right Left reverse
set grid lw 3
set ylabel "FLOP per Byte"
set xlabel "End of Year"

set yrange [0.5:30]
set output "flop-per-byte-sp.eps"
set title "Floating Point Operations per Byte, Single Precision"

plot 'data-sp-intel.txt'     using 1:($2/$4)           with linesp pt  9 ps 3.0 title "CPUs, Intel", \
     'data-sp-intel.txt'     using 1:($2/$4*0.8):6     with labels rotate by 15 notitle, \
     'data-sp-nvidia.txt'    using 1:($2/$4)           with linesp pt  5 ps 3.0 title "GPUs, NVIDIA", \
     'data-sp-amd.txt'       using 1:($2/$4)           with linesp pt  7 ps 3.0 title "GPUs, AMD", \
     'data-sp-intel-phi.txt' using 1:($2/$4)           with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-sp-nvidia.txt'    using 1:(($2/$4)*0.77):10 with labels rotate by 15 notitle, \
     'data-sp-amd.txt'       using 1:(($2/$4)*1.3):10  with labels rotate by 15 notitle, \
     'data-sp-intel-phi.txt' using 1:(($2/$4)*0.85):6  with labels rotate by 15 notitle

set yrange [0.5:30]
set output "flop-per-byte-dp.eps"
set title "Floating Point Operations per Byte, Double Precision"
set key top left Left reverse

set label "Radeon HD 3870" at 2007, 1.6 center rotate by 20
set label "Radeon HD 4870" at 2008, 1.5 center rotate by 20
set label "Radeon HD 5870" at 2009, 4.5 center rotate by 20
set label "Radeon HD 6970" at 2010, 5 center rotate by 20
set label "Radeon HD 6970" at 2011, 5 center rotate by 20
set label "Radeon HD 7970 GHz Ed." at 2012, 2.6 center rotate by 20
set label "Radeon HD 8970" at 2013, 3 center rotate by 20
set label "FirePro W9100" at 2014, 10 center rotate by 20

set label "Tesla C1060" at 2008, 0.6 center rotate by 20
set label "Tesla C1060" at 2009, 0.6 center rotate by 20
set label "Xeon X5680"  at 2010, 2.1 center rotate by 20
set label "Xeon X5690"  at 2011, 2.15 center rotate by 20
set label "Tesla K20"   at 2012, 7 center rotate by 20
set label "Tesla K20X"  at 2013, 4.4 center rotate by 20
set label "Tesla K40"   at 2014, 4.4 center rotate by 20

plot 'data-dp-intel.txt' using 1:($2/$4) with linesp pt 9 ps 3.0 title "CPUs, Intel", \
     'data-dp-intel.txt' using 1:(($2/$4)*1.2):7 with labels rotate by 20 notitle, \
     'data-dp-nvidia.txt' using 1:($2/$4) with linesp pt 5 ps 3.0 title "GPUs, NVIDIA", \
     'data-dp-amd.txt' using 1:($2/$4) with linesp pt 7 ps 3.0 title "GPUs, AMD", \
     'data-dp-intel-phi.txt' using 1:($2/$4) with linesp pt 11 ps 3.0 title "MIC, Intel", \
     'data-dp-intel-phi.txt' using 1:(($2/$4)*1.25):6 with labels rotate by 20 notitle

