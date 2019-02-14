% a)
clear
% <nf>=1/(exp(hp*w/(k*T))-1)                (6-43)
syms hp w dw k T real
nfm=1/(exp(hp*w/(k*T))-1) 
% gf(E)=(E^2*V)/(c^3*hp^3*pi^2)                          (6.30)
syms E dE V c real
syms pi
g(E)=(E^2*V)/(c^3*hp^3*pi^2)

dn=(g(E)*dE/V)*nfm  % =nw*dw
% (E^2*dE)/(c^3*hp^3*pi^2*(exp((hp*w)/(T*k)) - 1))
dn=subs(dn,[E dE],[hp*w hp*dw])
% (dw*w^2)/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))
nw=dn/dw
% w^2/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))
dnw=simplify(diff(nw))
%-(w*(2*T*k - 2*T*k*exp((hp*w)/(T*k)) + hp*w*exp((hp*w)/(T*k))))/(T*c^3*k*pi^2*(exp((hp*w)/(T*k)) - 1)^2)
eq1=2*T*k - 2*T*k*exp((hp*w)/(T*k)) + hp*w*exp((hp*w)/(T*k))
eq1=expand(eq1/((k*T)*exp((hp*w)/(T*k))))
% 2*exp(-(hp*w)/(T*k)) + (hp*w)/(T*k) - 2
% hp*w/(k*T)=x
syms x
eq2=2*exp(-x)+x-2
xsol=solve(eq2,x)
digits(3)
x0=vpa(xsol)
% x0=1.59~1.6
% Ev=hp*wv=1.6*k*T
Ev=1.6*k*T
Ev1=vpa(subs(Ev,[k T],[1.38e-23 300]))
% 6.62e-21 J
Ev2=Ev1/1.6e-19
% 0.0414 eV

% b)
% <E>
% wm=int(w*nw,w,0,inf)/int(nw,w,0,inf)=I1/I2
I1=int(w*nw,w,0,inf)
syms x
I1=1/(pi^2*c^3)*(k*T/hp)^4*int(x^3/(exp(x)-1),x,0,inf)
% (T^4*k^4*pi^2)/(15*c^3*hp^4)
I2=int(nw,w,0,inf)
I2=1/(pi^2*c^3)*(k*T/hp)^3*int(x^2/(exp(x)-1),x,0,inf)
% (2*T^3*k^3*zeta(3))/(c^3*hp^3*pi^2)
wm=simplify(I1/I2)
% (T*k*pi^4)/(30*hp*zeta(3))
wm1=vpa(wm)
% (2.7*T*k)/hp
Em=hp*wm1
% 2.7*T*k
Em1=vpa(subs(Em,[k T],[1.38e-23 300]))
% 1.12e-20 J
Em1/1.6e-19
% 0.0699 eV
