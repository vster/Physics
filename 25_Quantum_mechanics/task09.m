clear
syms c m hp n L p(n)
E(n)=c*sqrt(p(n)^2+m^2*c^2)

p1(n)=n*(pi*hp/L)                  % (25-13)

E(n)=subs(E(n),p,p1)
% c*(c^2*m^2 + (hp^2*n^2*pi^2)/L^2)^(1/2)
pretty(E(n))

% E=K+m*c^2
K=E(n)-m*c^2
% c*(c^2*m^2 + (hp^2*n^2*pi^2)/L^2)^(1/2) - c^2*m
% c*(c^2*m^2 + (hp^2*n^2*pi^2)/(4*x0^2))^(1/2) - c^2*m