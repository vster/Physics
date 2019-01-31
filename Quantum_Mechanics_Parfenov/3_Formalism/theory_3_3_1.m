% Multilevel Hamiltonians
ket1=[1;0]
ket2=[0;1]
syms a b
ket_Psi=a*ket1+b*ket2
% where |a|^2+|b|^2=1
% OpH|Psi>=E|Psi>
% i*hp*d/dt|Psi>=OpH|Psi>

syms h g E 
H=[h g;g h]
I=eye(2)
eq1=det(H-E*I)
% E^2 - 2*E*h - g^2 + h^2
Esol=solve(eq1,E)
%  g + h
%  h - g
% E+- = h+-g

syms alfa beta
ket_psi=[alfa;beta]
H*ket_psi
% beta*g + alfa*h 
% alfa*g + beta*h
% h*alfa+g*beta=(h+-g)*alfa => beta=+-alfa
% |Psi+->=1/sqrt(2)*[1;+-1]

[V D]=eig(H)
% V =
% [ 1, -1]
% [ 1,  1]
% D =
% [ g + h,     0]
% [     0, h - g]

ket_Psip=1/sqrt(2)*[1;1]
ket_Psim=1/sqrt(2)*[1;-1]

ket_Psi0=[1;0]
1/sqrt(2)*(ket_Psip+ket_Psim)
% [1;0]
% exp(-i*En*t/hp)
syms t hp real
E1=h+g
E2=h-g
ket_Psi(t)=1/sqrt(2)*(exp(-i*E1*t/hp)*ket_Psip+...
            exp(-i*E2*t/hp)*ket_Psim)
ket_Psi(t)=simplify(ket_Psi_t)
%      exp(-(h*t*1i)/hp)*cos((g*t)/hp)
%  -exp(-(h*t*1i)/hp)*sin((g*t)/hp)*1i
