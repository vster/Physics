Imax=100 % A
V=120 % V

% a)
Pmax=Imax*V
% 12000 W = 12 kV

% b)
syms P T
A=P*T
A=vpa(subs(A,[P T],[Pmax/1e3 24*30]))
% 8644.0 kW*h