set terminal png size 1200,800
set xdata time
# time range must be in same format as data file
# YYYYMMDD-HHMMSS
set timefmt "%Y-%m-%d/%H:%M:%S"
set output "graphs/erc32-uncovered_percent-d.png"
set xrange ["2009-12-04/17:15":"2010-11-27/10:15"]
set yrange [0:3.586]
set grid
set xlabel "Date"
set ylabel "Uncovered"
set title "Percentage Not Executed (Core)"
set key left box
plot "plot_data/erc32-Ospd-uncovered_percent.dat" using 1:2 index 0 \
  title "Ospd" with lines lw 2, \
     "plot_data/erc32-OsPd-uncovered_percent.dat" using 1:2 index 0 \
  title "OsPd" with lines lw 2, \
     "plot_data/erc32-O2pd-uncovered_percent.dat" using 1:2 index 0 \
  title "O2pd" with lines lw 2, \
     "plot_data/erc32-O2Pd-uncovered_percent.dat" using 1:2 index 0 \
  title "O2Pd" with lines lw 2
set,terminalset,xdata#,time#,YYYYMMDD-HHMMSSset,timefmtset,outputset,xrangeset,yrangeset,gridset,xlabelset,ylabelset,titleset,keyplot,"plot_data/erc32-Ospd-uncovered_percent.dat"title,"Ospd""plot_data,usingtitle,"OsPd""plot_data,usingtitle,"O2pd""plot_data,usingtitle,"O2Pd"