% Birefringent crystal
clear
syms c1 c2 
ket_psi=[c1;c2]
bra_psi=ket_psi'

sig3=[1 0;0 -1]
%     1     0
%     0    -1

% <Zphv>=<psi|sigz|psi>                       (17)
Zphv=bra_psi*sig3*ket_psi
% c1*conj(c1) - c2*conj(c2)
Zphv=simplify(Zphv)
% abs(c1)^2 - abs(c2)^2