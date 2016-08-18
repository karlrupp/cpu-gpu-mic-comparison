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

set logscale y
set format y "10^{%L}"
set xrange [2006.4:2016.6]
set key samplen 6 spacing 3.0
set key bottom right
set grid lw 3
set ylabel "GFLOP/sec per Watt"
set xlabel "End of Year"

set yrange [0.4:100]
set output "gflops-per-watt-sp.eps"
set title "Theoretical Peak Floating Point Operations per Watt, Single Precision"

# Labels AMD
set label "HD 3870"         at 2007,6  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,12 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,16 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,16 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,16 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,20 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,13 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,14.5 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,15.5 center rotate by 20 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"      at 2007,0.5 center rotate by 30 textcolor rgb "#005197"
set label "X5492"      at 2008,0.55 center rotate by 30 textcolor rgb "#005197"
set label "W5590"      at 2009,0.65 center rotate by 30 textcolor rgb "#005197"
set label "X5680"      at 2010,0.9 center rotate by 30 textcolor rgb "#005197"
set label "X5690"      at 2011,1.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"    at 2012,2.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2" at 2013,3.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2014,6.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2015,6.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4" at 2016,8.5 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "8800 GTS"       at 2007,3.2 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,3  center rotate by 30 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,4  center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,4.7 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,4.7 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,11 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,25 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,30  center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,35 center rotate by 30 textcolor rgb "#00D317"
set label "NVIDIA Titan X" at 2016,60 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,10.6 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2016,22 center rotate by 55


plot 'data-intel.txt'     using 1:($2/$6) with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-sp-nvidia.txt' using 1:($2/$5) with linesp pt 5 ps 3.0 title "NVIDIA GeForce GPUs", \
     'data-amd.txt'       using 1:($2/$6) with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($2/$6) with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

set yrange [0.1:50]
set output "gflops-per-watt-dp.eps"
set title "Theoretical Peak Floating Point Operations per Watt, Double Precision"

unset label

# Labels AMD
set label "HD 3870"         at 2007,1.4 center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,2.5 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,3.3 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,4 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,4 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,2.8 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,3 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,13 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,15 center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"      at 2007,0.25 center rotate by 30 textcolor rgb "#005197"
set label "X5492"      at 2008,0.25 center rotate by 30 textcolor rgb "#005197"
set label "W5590"      at 2009,0.30 center rotate by 30 textcolor rgb "#005197"
set label "X5680"      at 2010,0.4 center rotate by 30 textcolor rgb "#005197"
set label "X5690"      at 2011,0.45 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"    at 2012,1.0 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2" at 2013,1.5 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3" at 2014.5,3.3 center rotate by 00 textcolor rgb "#005197"
set label "E5-2699 v4" at 2016,4 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,0.6  center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009.2,0.8  center rotate by 60 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2009.8,1.2 center rotate by 60 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,2 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,7 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,8 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014.5,7.5 center rotate by 00 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016,25 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014.5,2.7 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2016,10.7 center rotate by 54


plot 'data-intel.txt'     using 1:($3/$6) with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-dp-nvidia.txt' using 1:($2/$5) with linesp pt 5 ps 3.0 title "NVIDIA Tesla GPUs", \
     'data-amd.txt'       using 1:($3/$6) with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($3/$6) with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

