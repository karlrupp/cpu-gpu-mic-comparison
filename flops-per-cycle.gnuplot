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
set xrange [2006.4:2021.6]
set key samplen 6 spacing 3.0
set key bottom right
set grid lw 3
set ylabel "FLOPs per Clock Cycle"
set xlabel "End of Year"

set yrange [10:40000]
set output "flops-per-cycle-sp.eps"
set title "Theoretical Peak Floating Point Operations per Clock Cycle, Single Precision"

# Labels AMD
set label "HD 3870"         at 2007,400  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,2500 center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,4500 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,4500 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,4500 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,6000 center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,3000 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,3500 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,3500 center rotate by 30 textcolor rgb "#971c00"
set label "MI25"            at 2016,14500 center rotate by 30 textcolor rgb "#971c00"
set label "MI60"            at 2018,5900 center rotate by 30 textcolor rgb "#971c00"
set label "MI250"           at 2021,19000 center rotate by 30 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"             at 2007,20 center rotate by 30 textcolor rgb "#005197"
set label "X5492"             at 2008,21 center rotate by 30 textcolor rgb "#005197"
set label "W5590"             at 2009,21 center rotate by 30 textcolor rgb "#005197"
set label "X5680"             at 2010,30 center rotate by 30 textcolor rgb "#005197"
set label "X5690"             at 2011,35 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"           at 2012,80 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2"        at 2013,140 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"        at 2014,380 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"        at 2015,380 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4"        at 2016,500 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8180"     at 2017,1050 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 9282"     at 2018,2400 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8380HL"   at 2020,1400 center rotate by 0 textcolor rgb "#005197"
set label "Platinum 8380"     at 2021,3600 center rotate by 00 textcolor rgb "#005197"


# Labels NVIDIA
set label "8800 GTS"       at 2007,2000 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,1000 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,1000 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,1200 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,1200 center rotate by 30 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,2000 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,8000 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,11000 center rotate by 30 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,10000  center rotate by 30 textcolor rgb "#00D317"
set label "Titan X"        at 2016,11000 center rotate by 30 textcolor rgb "#00D317"
set label "Titan V"        at 2017,14200 center rotate by 30 textcolor rgb "#00D317"
set label "Titan RTX"      at 2018,13200 center rotate by 30 textcolor rgb "#00D317"
set label "RTX 3090"       at 2020,29000 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,1500 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.85,3000 center rotate by 35


plot 'data-intel.txt'     using 1:($2/$7*1000)         with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-sp-nvidia.txt' using 1:($2/$7*1000)         with linesp pt 5 ps 3.0 title "NVIDIA GeForce GPUs", \
     'data-amd.txt'       using 1:($2/$8*1000)         with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($2/$7*1000)         with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"
 
set yrange [10:32000]
set output "flops-per-cycle-dp.eps"
set title "Theoretical Peak Floating Point Operations per Clock Cycle, Double Precision"

unset label

# Labels AMD
set label "HD 3870"         at 2007,200  center rotate by 30 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,450  center rotate by 30 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,900 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,1100 center rotate by 30 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,1100 center rotate by 30 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,650  center rotate by 30 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,750  center rotate by 30 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,4000 center rotate by 30 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,4500 center rotate by 30 textcolor rgb "#971c00"
set label "MI25"            at 2016,800 center rotate by 30 textcolor rgb "#971c00"
set label "MI60"            at 2018,5900 center rotate by 30 textcolor rgb "#971c00"
set label "MI250"           at 2021,18000 center rotate by 30 textcolor rgb "#971c00"


# Labels Intel
set label "X5482"             at 2007,12.5 center rotate by 30 textcolor rgb "#005197"
set label "X5492"             at 2008,12.5 center rotate by 30 textcolor rgb "#005197"
set label "W5590"             at 2009,12.5 center rotate by 30 textcolor rgb "#005197"
set label "X5680"             at 2010,17 center rotate by 30 textcolor rgb "#005197"
set label "X5690"             at 2011,18 center rotate by 30 textcolor rgb "#005197"
set label "E5-2690"           at 2012,45 center rotate by 30 textcolor rgb "#005197"
set label "E5-2697 v2"        at 2013,70 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"        at 2014,200 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v3"        at 2015,200 center rotate by 30 textcolor rgb "#005197"
set label "E5-2699 v4"        at 2016,250 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8180"     at 2017,580 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 9282"     at 2018,1350 center rotate by 30 textcolor rgb "#005197"
set label "Platinum 8380HL"   at 2020,700 center rotate by 0 textcolor rgb "#005197"
set label "Platinum 8380"     at 2021,1700 center rotate by 00 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,37 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009,37 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2010,190  center rotate by 30 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,280  center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,2500 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,2700 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014,1400 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla K40"    at 2015,1400 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016,5000 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla V100"   at 2017,7400 center rotate by 30 textcolor rgb "#00D317"
set label "Tesla A100"   at 2020,4500 center rotate by 30 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014.2,750 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2015.9,1600 center rotate by 40



plot 'data-intel.txt'     using 1:($3/$7*1000) with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-dp-nvidia.txt' using 1:($2/$7*1000) with linesp pt 5 ps 3.0 title "NVIDIA Tesla GPUs", \
     'data-amd.txt'       using 1:($3/$8*1000) with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:($3/$7*1000) with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

