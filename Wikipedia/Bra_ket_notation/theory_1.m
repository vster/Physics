% <phi|psi>
% |psi> - ket
% <phi| - bra
clear
syms b1 b2 c1 c2
ket_B=[b1;b2] 
ket_C=[c1;c2]
ket_A=ket_B+ket_C

syms x1 x2 x
ket_x=[x1;x2]
ket_D=int(exp(-x^2)*ket_x,x,-inf,+inf)

ket_C=(-1+2*i)*ket_D

syms a1 a2
bra_A=[a1' a2']

% <A|B>=
bra_A*ket_B

% |A>=<A|'
ket_A=bra_A'

syms psi1 psi2
syms phi1 phi2
ket_phi=[phi1;phi2]
bra_psi=[psi1' psi2']
% |phi><psi|
ket_phi*bra_psi
% <psi|phi>
bra_psi*ket_phi
% phi1*conj(psi1) + phi2*conj(psi2)

syms a11 a12 a21 a22
OperA=[a11 a12;a21 a22]
% A|phi>
OperA*ket_phi
% <psi|A
bra_psi*OperA
% <psi|A|phi>
bra_psi*(OperA*ket_phi)