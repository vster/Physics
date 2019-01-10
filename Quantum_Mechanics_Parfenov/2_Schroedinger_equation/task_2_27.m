% T^(-1)=1+V0^2/(4*E*(E+V0))*sin(2*a/hp*sqrt(2*m*(E+V0))
clear
syms E V0 a m hp real
T=1/(1+V0^2/(4*E*(E+V0))*sin(2*a/hp*sqrt(2*m*(E+V0)))^2)
digits(3)
T1=vpa(subs(T,[E V0 a m hp],[5*1.6e-19 10*1.6e-19 2e-9 9.1e-31 1.05e-34]))
% 0.794
R=1-T1
% 0.206