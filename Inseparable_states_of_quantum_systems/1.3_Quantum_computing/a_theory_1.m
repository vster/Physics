syms alfa beta
sig0=[1 0;0 1]
I2=sig0
ket0=[1;0]
ket1=[0;1]
ket_psi=alfa*ket0+beta*ket1

I2_ket_psi=sig0*ket_psi

sig1=[0 1;1 0]
X=sig1
X_ket_psi=sig1*ket_psi
% beta
% alfa

sig2=[0 -1i;1i 0]
Y=sig2
Y_ket_psi=sig2*ket_psi
% -beta*1i
%  alfa*1i

sig3=[1 0;0 -1]
Z=sig3
Z_ket_psi=sig3*ket_psi
%  alfa
% -beta

syms teta
P=[1 0;0 exp(1i*teta)]
P_ket_psi=P*ket_psi
%              alfa
% beta*exp(teta*1i)

H=1/sqrt(2)*[1 1;1 -1]
H_ket_psi=H*ket_psi
% (2^(1/2)*alfa)/2 + (2^(1/2)*beta)/2
% (2^(1/2)*alfa)/2 - (2^(1/2)*beta)/2