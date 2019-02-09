% P = 10 MW
% R = 10 Ohm
% a) 1.4e4 V
% b) 1e5 V

clear
% P=I*V => I=P/V
% Ploss=I^2*R=(P/V)^2*R=R*P^2/V^2
syms R P V
Ploss=R*P^2/V^2
digits(3)
Ploss1=vpa(subs(Ploss,[R P],[10 1e7]))
% 1.0e15/V^2

% a)
Plossa=vpa(subs(Ploss1,V,1.4e4))
% 5.1e6 W = 5 MW = 50%

% b)
Plossb=vpa(subs(Ploss1,V,1e5))
% 1.0e5 = 0.1 MW = 1%