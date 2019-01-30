% P1P2=lam/2=5 cm
% f-?
clear
syms c lam
f=c/lam
digits(3)
f1=vpa(subs(f,[c lam],[3e8 2*0.05]))
% 3.0e9 Hz = 3 GHz

