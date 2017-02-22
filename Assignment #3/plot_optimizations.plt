iext = ".txt"

set term png
oext = ".png"

text = "'Verdana,10'"

iopt = "./output_optimizations.txt"
oopt = "./optimizations.png"

set output oopt
set xlabel "Array Size"
set ylabel "Speed Up"
set title "Array-Size vs SpeedUp"
set key outside
set style function linespoints
set style line 10

plot for [i=2:n+1] iopt u 1:i with linespoints title columnheader(i)
