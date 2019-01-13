clear
n=3
% |phi>
ket_c=sym('c',[n,1])
% <phi|
bra_c=ket_c'
% |psi>
ket_d=sym('d',[n,1])
% <psi|
bra_d=ket_d'

% |phi><psi|
ket_c*bra_d

% <psi|phi>
bra_d*ket_c

% OpPphi=|phi><phi|
OpPphi=ket_c*bra_c
