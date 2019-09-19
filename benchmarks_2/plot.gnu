set title "Linpack benchmark on GPU and CPU" font ",14"
set label "Intel E5-2660 v4: N=[124346, 175852, 248692, 351704], NB=192, freq=2.2, \nPxQ=[2x2, 2x4, 4x4, 4x8], 2 CPU on each Node" center at graph 0.5, char 2.5 font ",10"
set label "Nvidia K20: N=[49152, 69511], NB=704, freq=2.2, PxQ=[2x2, 2x4], \n2 GPU on each node" center at graph 0.5, char 5 font ",10"
set bmargin 10

set ylabel "Performance [Gflop/s]"
set xlabel "Nodes"
set grid

#set logscale y
#set ytics 0,10,1000 
set xrange[0:18]
set xtics 0,2,18
#set xtics rotate by -45

set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'red' pt 5

plot 'ex3.dat' using 1:2 with lp ls 1 title "Intel Xeon Ivy Bridge-EP (E5-2660 v4)", \
     'ex3.dat' using 1:3 with lp ls 2 title "Nvidia Tesla K20 GPU"
pause -1
