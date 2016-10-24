set terminal epslatex
set output "spektren.eps"
set xrange[0:3000000000]


set title "This is a title"
set xlabel "This is the x axis"
set ylabel "This is a longer version of the y axis"
set xtic 0,500000000,3000000000
set ytic -10,5,10


h=6.62607004*10**(-34)
c=299792458
e=2.718281828459045
k=1.380649*10**(-23)
T1=100
T2=150
T3=200

plot 8*pi*h*x**3/(c**3*(e**(h*x/k*T1))-1) title "T=100K", 8*pi*h*x**3/(c**3*(e**(h*x/k*T2))-1), 8*pi*h*x**3/(c**3*(e**(h*x/k*T3))-1)
