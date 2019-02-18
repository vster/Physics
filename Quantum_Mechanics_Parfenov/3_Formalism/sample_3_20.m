clear
syms u1 u2
ket_Psi=[u1;u2]
ket_Psi'*ket_Psi
% u1^2 + u2^2 = 1                       (3.18)

ro=ket_Psi*ket_Psi'
%[  u1^2, u1*u2]
%[ u1*u2,  u2^2]

[V,D]=eig(ro)