set terminal epslatex
set output "plots.eps"
set xrange[-10:10]
set yrange[0:1.1]
set format xy "$%g$"


set xlabel '$x$'
set ylabel '$|\psi|^2$'

plot  2.71**(-0.5*x**2) title "$ \psi_1$" lw 2 lc rgb "blue" ,1/(x**2+1) title "$ \psi_2$" lw 2 lc rgb "red"

