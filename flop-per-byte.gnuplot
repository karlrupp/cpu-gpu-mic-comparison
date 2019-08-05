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
set xrange [2006.4:2018.6]
set key samplen 6 spacing 3.0
set key bottom right
set grid lw 3
set ylabel "FLOP per Byte"
set xlabel "End of Year"


set yrange [1:70]
set output "flop-per-byte-sp.eps"
set title "Theoretical Peak Floating Point Operations per Byte, Single Precision"

# Labels AMD
set label "HD 3870"         at 2007,5.5  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,13 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,22 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,20 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,19 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012.2,11.5 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,13 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,13.5 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,14 center rotate by 30 textcolor rgb "#971c00"
set label "MI25"            at 2016,33 center rotate by 30 textcolor rgb "#971c00"
set label "MI60"            at 2018,12 center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"         at 2007,3.3 center rotate by 30 textcolor rgb "#005197"
set label "X5492"         at 2008,3.5 center rotate by 30 textcolor rgb "#005197"
set label "W5590"         at 2009,2.8 center rotate by 30 textcolor rgb "#005197"
set label "X5680"         at 2010,4 center rotate by 30 textcolor rgb "#005197"
set label "X5690"         at 2011,4.5 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"       at 2012,6 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2"    at 2013,7 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2014,28 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2015,30  center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4"    at 2016,15 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8180" at 2017,47 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 9282" at 2018,43 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "8800 GTS"       at 2007,12 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,5.5 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,5.5 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,7  center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,7  center rotate by 30 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,19 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,19 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,24 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,25 center rotate by 30 textcolor rgb "#00D317"
set label "Titan X"        at 2016,17 center rotate by 30 textcolor rgb "#00D317"
set label "Titan V"        at 2017,28 center rotate by 30 textcolor rgb "#00D317"
set label "Titan RTX"      at 2018,30 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014.2,9.5 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.8,9.5 center rotate by 30


plot 'data-intel.txt'     using 1:($2/$5)           with linesp pt  9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-sp-nvidia.txt' using 1:($2/$4)           with linesp pt  5 ps 3.0 title "NVIDIA Geforce GPUs", \
     'data-amd.txt'       using 1:($2/$5)           with linesp pt  7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($2/$5)           with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

set yrange [0.5:30]
set output "flop-per-byte-dp.eps"
set title "Theoretical Peak Floating Point Operations per Byte, Double Precision"

unset label

# Labels AMD
set label "HD 3870"         at 2007,1.1 center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,1.6 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,4.5 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,6   center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,6   center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,2.8 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,3   center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,12  center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,13  center rotate by 30 textcolor rgb "#971c00"
set label "MI25"            at 2016,2.8  center rotate by 30 textcolor rgb "#971c00"
set label "MI60"            at 2018,9  center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"         at 2007,2.5 center rotate by 30 textcolor rgb "#005197"
set label "X5492"         at 2008,2.5 center rotate by 30 textcolor rgb "#005197"
set label "W5590"         at 2009,2   center rotate by 30 textcolor rgb "#005197"
set label "X5680"         at 2010,2   center rotate by 30 textcolor rgb "#005197"
set label "X5690"         at 2011,2.2 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"       at 2012,4.5 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2"    at 2013,7   center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2014,14  center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2015,15  center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4"    at 2016,14  center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8180" at 2017,14 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 9282" at 2018,21 center rotate by 30 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,0.6  center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009,0.6  center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2010,5 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,5 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,7 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,8 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014,4 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2015,4 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016,8 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla V100"   at 2017,10.5 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014.4,6 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.8,4.5 center rotate by 30



plot 'data-intel.txt'     using 1:($3/$5) with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-dp-nvidia.txt' using 1:($2/$4) with linesp pt 5 ps 3.0 title "NVIDIA Tesla GPUs", \
     'data-amd.txt'       using 1:($3/$5) with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($3/$5) with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

