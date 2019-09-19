set title "hpcg benchmark on nodes with two CPUs vs two GPUs \n {/*0.8 N=nx=ny=nz=192, freq=2.2, 120 seconds}" font ",14"

set ylabel "Performance [Gflop/s]"
set xlabel "Number of nodes"
set grid

#set logscale y
#set ytics 0,10,1000 
set xrange[0:17]
#set xtics 0,64,1280 font ",8"
#set xtics rotate by -45

set style line 1 lc rgb 'blue' pt 9
set style line 2 lc rgb 'green' pt 7

set key left top

plot 'ex3.dat' using 1:2 with lp ls 2 title "Intel Xeon E5-2630v4", \
     'ex3.dat' using 1:3 with lp ls 1 title "Nvidia K20"
pause -1
