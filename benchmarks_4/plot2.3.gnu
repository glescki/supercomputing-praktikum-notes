set title "HPCG 3.0 CUDA, single GPU NVIDIA Tesla K20c ]\n {/*0.8 nx=ny=nz=192, 120 seconds, heat=Energy-efficiency [GFlop/s/W]}" font ",14" offset 0,1

#set ylabel "Energy-efficiency [GFlop/s/Watt]"
set ylabel "Number of active cores"
set xlabel "CPU Frequency [MHz]"
#set grid
#set ytics 0,10,1000 
#set xrange[1.1:2.3]
set yrange[0:4990]
set ytics 1248 
#set xtics 0,64,1280 font ",8"
#set xtics rotate by -45
set cblabel "Energy-efficiency [GFlop/s/W]"

set style line 1 lc rgb 'blue' pt 7
set style line 2 lc rgb 'green' pt 7

unset key

plot 'results_ex2.3' with image 

pause -1
