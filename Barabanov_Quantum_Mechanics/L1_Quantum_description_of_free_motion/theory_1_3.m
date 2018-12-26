clear
syms C0 x t p p0 dp hp
assume(dp>0)
C(p)=piecewise(p0-dp<=p<=p0+dp,C0,0)
syms E0 dEp0
E(p)=E0+(p-p0)*dEp0

Psi(x,t)=C0*int(1/sqrt(2*pi*hp)*exp(i*(p*x-E*t)/hp),p,p0-dp,p0+dp)

syms f(x)
Psi(x,t)=(C0*hp/sqrt(2*pi*hp))*exp(i*(p0*x-E0*t)/hp)*f(x-dEp0*t)
% where
syms ksi x1
f(x1)=int(exp(i*ksi*x1),ksi,-dp/hp,dp/hp)
% -(exp(-(dp*x*1i)/hp)*(exp((dp*x*2i)/hp) - 1)*1i)/x
pretty(f)
f(x1)=2*sin(dp*x1/hp)/x1
pretty(f(x1))

f1=abs(f(3/2*pi*hp/dp))
f0=limit(f(x),x,0)

pp=vpa(f1/f0)
% 0.2122

