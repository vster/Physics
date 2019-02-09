% w = 60*2*pi
% I = 2 A

% P=f*v
% P=(R*F)*(v/R)=T*w
% T=n*I*A*B*sin(teta)
clear
syms n I A B teta w
P=(n*I*A*B*sin(teta))*w
P0=n*I*A*B*w
digits(3)
P01=vpa(subs(P0,[n I A B w],[200 2 30e-4 0.5 120*pi]))
% 226.0 W
P01/735
% 0.308 hp = l.s.