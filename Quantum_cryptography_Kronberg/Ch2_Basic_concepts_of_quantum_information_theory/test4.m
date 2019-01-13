clear
syms phi1 phi2
ket_phi_i=[phi1 0;0 phi2]
bra_phi_i=ket_phi_i'

OpP=ket_phi_i*bra_phi_i
OpP'

% syms lam1 lam2
lam=sym('lam',[1,2])
ket_psi=lam(1)*ket_phi_i(:,1)+lam(2)*ket_phi_i(:,2)