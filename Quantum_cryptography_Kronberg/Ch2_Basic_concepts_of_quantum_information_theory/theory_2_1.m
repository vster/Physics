% Quantum states

% Quantum function and pure states
clear
n=3
% |psi>
ket_psi=sym('psi',[n,1])
% <psi|
bra_psi=ket_psi'
% |phi>
ket_phi=sym('phi',[n,1])
% <phi|
bra_phi=ket_phi'

% <phi|psi>
bra_phi*ket_psi
% psi1*conj(phi1) + psi2*conj(phi2)

% ro_phi=|psi><psi|
ro_phi=ket_psi*bra_psi

Ones=ones(1,n)
I=eye(n)
Pv=sym('p',[n 1])
OpRo=Pv*Ones
OpRo=OpRo.*I

% sum(i)pi=1
% p1+p2=1

% <psi|ro|phi> = sum(i)p(i)|<phi|psi>|^2
simplify(bra_psi*OpRo*ket_phi)
% p1*phi1*conj(psi1) + p2*phi2*conj(psi2)

n1=3
ket_lam=sym('lam',[n1,1])
bra_lam=ket_lam'
A=ket_lam*bra_lam
% A=sum(i)lam(i)|lam(i)><lam(i)|

% State change over time

% i*hp*d|psi>/dt=H|psi>                      (2.1)
% U=exp(i*H)
% |psi'>=U|psi>                              (2.2)

% Qubits

ket0=[1;0]
ket1=[0;1]
syms alfa real
ket_psi=cos(alfa)*ket0+sin(alfa)*ket1
bra_psi=ket_psi'
ket_psi1=cos(alfa+pi/2)*ket0+sin(alfa+pi/2)*ket1   % ?
bra_psi1=ket_psi1'

syms p
ro=p*ket_psi*bra_psi+(1-p)*ket_psi1*bra_psi1
ro=simplify(ro)
% ???

