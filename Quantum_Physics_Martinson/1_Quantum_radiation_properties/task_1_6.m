% T^3*V=const                                 (1.52)
% T1^3*V1=T0^3*V0
% ro1=M/V1, ro0=M/V0
% T0^3=(V1/V0)*T1^3=(ro0/ro1)*T1^3
clear
syms ro0 ro1 T1
T0=T1*(ro0/ro1)^(1/3)
digits(3)
T0=vpa(subs(T0,[T1 ro0 ro1],[3000 1e-26 1e-17]))
% 3.0 K