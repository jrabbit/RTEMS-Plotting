set terminal png size 1200,800
set xdata time
# time range must be in same format as data file
# YYYYMMDD-HHMMSS
set timefmt "%Y-%m-%d/%H:%M:%S"
set output "graphs/erc32-total_bytes-D.png"
set xrange ["2009-12-03/11:15":"2010-11-27/10:15"]
set yrange [85000:135000]
set grid
set xlabel "Date"
set ylabel "Total"
set title "Bytes Analyzed (Developmental)"
set key left box
plot "plot_data/erc32-OspD-total_bytes.dat" using 1:2 index 0 \
  title "OspD" with lines lw 2, \
     "plot_data/erc32-OsPD-total_bytes.dat" using 1:2 index 0 \
  title "OsPD" with lines lw 2, \
     "plot_data/erc32-O2pD-total_bytes.dat" using 1:2 index 0 \
  title "O2pD" with lines lw 2, \
     "plot_data/erc32-O2PD-total_bytes.dat" using 1:2 index 0 \
  title "O2PD" with lines lw 2
set,terminalset,xdata#,time#,YYYYMMDD-HHMMSSset,timefmtset,outputset,xrangeset,yrangeset,gridset,xlabelset,ylabelset,titleset,keyplot,"plot_data/erc32-OspD-total_bytes.dat"title,"OspD""plot_data,usingtitle,"OsPD""plot_data,usingtitle,"O2pD""plot_data,usingtitle,"O2PD"