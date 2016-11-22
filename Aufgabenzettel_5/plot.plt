set terminal epslatex
set output "plot.eps"
set xrange[-5:5]
set format xy "$%g$"


set xlabel '$x$'
set ylabel '$|\psi|^2$'
unset xtics
unset ytics
set xtics ('$\sigma$' 2, '$-\sigma$' -2, '$0$' 0)


h=6.62607004*10**(-34)
c=299792458
e=2.718281828459045
k=1.380649*10**(-23)
T1=4000
T2=5000
T3=6000

plot x**2*e**(-x**2/4) title '$|\psi|^2$'
