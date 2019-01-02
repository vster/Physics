% E=1e6 N/C
% E*(4*pi*r^2)=2*pi*k0*Q
% Q=E*R^2/k0
clear
syms E R k0
Q=E*R^2/k0

syms N m C
Q_si=subs(Q,[k0 E R],[N*m^2/C^2 N/C m])
% C

Q1=subs(Q,[E R k0],[1e6 0.01 9e9])
digits(4)
vpa(Q1)
% 1.111e-8 C

Q2=subs(Q,[E R k0],[1e6 1 9e9])
vpa(Q2)
% 0.0001111 C
