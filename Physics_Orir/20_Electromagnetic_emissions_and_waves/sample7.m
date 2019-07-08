% mu = 4 g/cm = 0.4 kg/m
% T = 5e3 N
% P = 10 W
% f = 262 Hz

clear
syms T mu u f P w real 
u=sqrt(T/mu)
lam=u/f
% (T/mu)^(1/2)/f
y0=simplify(sqrt(2*u*P/T)/w)
% (2^(1/2)*((P*(T/mu)^(1/2))/T)^(1/2))/w
pretty(y0)
digits(3)
y0=vpa(subs(y0,[P T mu w],[10 5e3 0.4 262*2*pi]))
% 4.06e-4 m = 0.406 mm

