set title "HPL Cuda 8 benchmark, single GPU NVIDIA Tesla K20c\n {/*0.8 N=22000, NB=704, P=Q=1}" font ",14"

set ylabel "Energy-efficiency [GFlop/s/Watt]"
set xlabel "GPU Frequency [MHz]"
set grid

#set logscale y
#set ytics 0,10,1000 
set xrange[600:772]
#set yrange[2.0:3.0]
#set xtics 0,64,1280 font ",8"
#set xtics rotate by -45
set xtics (614, 640, 666, 705, 758)
set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'green' pt 7

set key left top

plot 'results_ex1.3' using 1:2 with lp ls 1 notitle 

pause -1
