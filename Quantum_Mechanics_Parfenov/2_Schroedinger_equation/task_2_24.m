clear
syms A t x a hp m phi real
syms pi
psi1=sin(pi*x/a)
psi2=sin(2*pi*x/a)
Psi=A*(psi1+exp(i*phi)*psi2)

In=int(Psi'*Psi,x,0,a)
% A^2*a=1 => A=1/sqrt(a)

Psi1=sin(pi*x/a)*exp(-i*pi^2*hp*t/(2*a^2*m))
Psi2=sin(2*pi*x/a)*exp(-i*2*pi^2*hp*t/(2*a^2*m))
Psi=1/sqrt(a)*(Psi1+exp(i*phi)*Psi2)
% (sin((pi*x)/a)*exp(-(hp*t*pi^2*1i)/(2*a^2*m)) + sin((2*pi*x)/a)*exp(phi*1i)*exp(-(hp*t*pi^2*1i)/(a^2*m)))/a^(1/2)
Psi22=expand(Psi^2)

xm=int(Psi'*x*Psi,x,0,a)
xm=expand(xm)
% a/2 - (8*a*exp(-phi*1i)*exp((hp*t*pi^2*1i)/(2*a^2*m)))/(9*pi^2) - (8*a*exp(phi*1i)*exp(-(hp*t*pi^2*1i)/(2*a^2*m)))/(9*pi^2)
xm= a/2 - (16*a/(9*pi^2))*cos((hp*t*pi^2)/(2*a^2*m)-phi)

xm1=expand(simplify(subs(xm,phi,pi/2)))
% a/2 - (16*a*sin((hp*t*pi^2)/(2*a^2*m)))/(9*pi^2)
xm2=expand(simplify(subs(xm,phi,pi)))
% a/2 + (16*a*cos((hp*t*pi^2)/(2*a^2*m)))/(9*pi^2)