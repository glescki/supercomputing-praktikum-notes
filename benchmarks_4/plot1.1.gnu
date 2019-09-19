set title "mp\\\_linpack 2018.1.009, single CPU Xeon 2660v2 \"Ivy Bridge\" \n {/*0.8 N=46341, NB=256, P=Q=1}" font ",14"

set ylabel "Energy-efficiency [GFlop/s/Watt]"
set xlabel "CPU Frequency [GHz]"
set grid

#set logscale y
#set ytics 0,10,1000 
set xrange[1.1:2.3]
set yrange[2.0:3.0]
#set xtics 0,64,1280 font ",8"
#set xtics rotate by -45
set xtics 1.1, .1, 2.2

set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'green' pt 7

set key left top

plot 'results_ex1.1' using 1:2 with lp ls 1 notitle 

pause -1
