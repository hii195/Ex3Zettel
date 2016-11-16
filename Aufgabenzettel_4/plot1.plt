set terminal epslatex
set output "elektronenbeugung.eps"
set xrange[0.014:0.019]
set yrange[0.04:0.051]
set format xy "$%g$"
set xtics 0.013,0.001,0.02



set xlabel '$V_a^{-1/2}[\mathrm{V}^{-1/2}]$'
set ylabel '$D[\mathrm{m}]$'

plot "data.dat" u 3:2 title "data" lw 2 ps 2 lc rgb "blue", 2.68333*x title "Fit" lw 2 lc rgb "red"

