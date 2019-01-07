% Quantum states

% Quantum function and pure states
syms psi1 psi2
syms phi1 phi2
% |psi>
ket_psi=[psi1;psi2]
% <psi|
bra_psi=ket_psi'
% |phi>
ket_phi=[phi1;phi2]
% <phi|
bra_phi=ket_phi'

% <phi|psi>
bra_phi*ket_psi
% psi1*conj(phi1) + psi2*conj(phi2)

% ro_phi=|psi><psi|
ro_phi=ket_psi*bra_psi

syms p1 p2
OperRo=[p1 0;0 p2]
% sum(i)pi=1
% p1+p2=1

% <psi|ro|phi> = sum(i)p(i)|<phi|psi>|^2
simplify(bra_psi*OperRo*ket_phi)
% p1*phi1*conj(psi1) + p2*phi2*conj(psi2)


