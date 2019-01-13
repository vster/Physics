clear
n=4
phi=sym('phi',[n,1])
I=eye(n)
ket_phi_i=I.*phi
bra_phi_i=ket_phi_i'

OpP=ket_phi_i*bra_phi_i
OpP'

% syms lam1 lam2
lam=sym('lam',[n,1])

ket_psi=zeros(n,1)
for i=1:n
    ket_psi=ket_psi+lam(i)*ket_phi_i(:,i)
end

