set terminal png size 1200,800
set xdata time
# time range must be in same format as data file
# YYYYMMDD-HHMMSS
set timefmt "%Y-%m-%d/%H:%M:%S"
set output "graphs/erc32-ranges-D.png"
set xrange ["2009-12-03/11:15":"2010-11-27/10:15"]
set yrange [130:400]
set grid
set xlabel "Date"
set ylabel "Ranges"
set title "Uncovered Ranges Found (Developmental)"
set key left box
plot "plot_data/erc32-OspD-ranges.dat" using 1:2 index 0 \
  title "OspD" with lines lw 2, \
     "plot_data/erc32-OsPD-ranges.dat" using 1:2 index 0 \
  title "OsPD" with lines lw 2, \
     "plot_data/erc32-O2pD-ranges.dat" using 1:2 index 0 \
  title "O2pD" with lines lw 2, \
     "plot_data/erc32-O2PD-ranges.dat" using 1:2 index 0 \
  title "O2PD" with lines lw 2
