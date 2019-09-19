set title "CUDA linpack on one Nvidia Tesla K20 GPU" font ",14"
set label "N=22000, freq=2.2, PxQ=1x1" center at graph 0.5, char 1 font ",12"
set bmargin 6

set ylabel "Performance [Gflop/s]"
set xlabel "NB"
set grid

#set logscale y
#set ytics 0,10,1000 
#set xrange[0:1280]
set xtics 0,64,1280 font ",8"
set xtics rotate by -45

set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'red' pt 7

plot 'ex6.dat' using 1:2 with lp ls 1 notitle
pause -1
