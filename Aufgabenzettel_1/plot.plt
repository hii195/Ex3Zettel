set terminal epslatex
set output "spektren1.eps"
set xrange[0:10**(15)]
set format xy "$%g$"


set xlabel '$\nu[Hz]$'
set ylabel '$u(\nu)$'


h=6.62607004*10**(-34)
c=299792458
e=2.718281828459045
k=1.380649*10**(-23)
T1=4000
T2=5000
T3=6000

plot 8*pi*h*x**3/(c**3*(e**(h*x/(k*T1))-1)) title "T=4000K", 8*pi*h*x**3/(c**3*(e**(h*x/(k*T2))-1)) title "T=5000K", 8*pi*h*x**3/(c**3*(e**(h*x/(k*T3))-1)) title "T=6000K"

set output "spektren2.eps"
set xrange[0:2*10**(-6)]
set xlabel '$\lambda[m]$'
set ylabel '$u(\lambda)$'
plot 8*pi*h*c/(x**5*(e**(h*c/(k*T1*x))-1)) title "T=4000K", 8*pi*h*c/(x**5*(e**(h*c/(k*T2*x))-1)) title "T=5000K", 8*pi*h*c/(x**5*(e**(h*c/(k*T3*x))-1)) title "T=6000K"

set output "spektren3.eps"
set xrange[0:3*10**(-6)]
set xlabel '$\lambda[m]$'
set ylabel '$u(\lambda)$'
h1=7*10**(-34)
h2=8*10**(-34)
h3=9*10**(-34)
h4=1*10**(-33)
h5=2*10**(-33)
h6=3*10**(-33)
h7=6.62607004*10**(-33)
plot 8*pi*h*c/(x**5*(e**(h*c/(k*T3*x))-1)) title '$h=6.62\cdot10^{-34}$', 8*pi*h1*c/(x**5*(e**(h1*c/(k*T3*x))-1)) title '$h=7\cdot10^{-34}$',8*pi*h2*c/(x**5*(e**(h2*c/(k*T3*x))-1)) title '$h=8\cdot10^{-34}$',8*pi*h3*c/(x**5*(e**(h3*c/(k*T3*x))-1)) title '$h=9\cdot10^{-34}$',8*pi*h4*c/(x**5*(e**(h4*c/(k*T3*x))-1)) title '$h=1\cdot10^{-33}$', 8*pi*h5*c/(x**5*(e**(h5*c/(k*T3*x))-1)) title '$h=2\cdot10^{-33}$', 8*pi*h6*c/(x**5*(e**(h6*c/(k*T3*x))-1)) title '$h=3\cdot10^{-33}$', 8*pi*h7*c/(x**5*(e**(h7*c/(k*T3*x))-1)) title '$h=6.62\cdot10^{-33}$'
