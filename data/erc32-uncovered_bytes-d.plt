set terminal png size 1200,800
set xdata time
# time range must be in same format as data file
# YYYYMMDD-HHMMSS
set timefmt "%Y-%m-%d/%H:%M:%S"
set output "graphs/erc32-uncovered_bytes-d.png"
set xrange ["2009-12-04/17:15":"2010-11-27/10:15"]
set yrange [0:3000]
set grid
set xlabel "Date"
set ylabel "Uncovered"
set title "Bytes Not Executed (Core)"
set key left box
plot "plot_data/erc32-Ospd-uncovered_bytes.dat" using 1:2 index 0 \
  title "Ospd" with lines lw 2, \
     "plot_data/erc32-OsPd-uncovered_bytes.dat" using 1:2 index 0 \
  title "OsPd" with lines lw 2, \
     "plot_data/erc32-O2pd-uncovered_bytes.dat" using 1:2 index 0 \
  title "O2pd" with lines lw 2, \
     "plot_data/erc32-O2Pd-uncovered_bytes.dat" using 1:2 index 0 \
  title "O2Pd" with lines lw 2
