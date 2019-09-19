set title "mp\\\_linpack on two Intel Xeon Ivy Bridge-EP (E5-2660 v4)" font ",14"
set label "N=[124346, 175852, 248692, 351704], NB=192, CPU freq=2.2, \nPxQ=[2x2, 2x4, 4x4, 4x8]" center at graph 0.5, char 2 font ",12"
set bmargin 6

set ylabel "Performance [Gflop/s]"
set xlabel "Nodes"
set grid

#set logscale y
#set ytics 0,10,1000 
set xrange[0:18]
set xtics 0,2,18
#set xtics rotate by -45

set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'red' pt 7

plot 'ex3.dat' using 1:2 with lp ls 1 notitle
pause -1
