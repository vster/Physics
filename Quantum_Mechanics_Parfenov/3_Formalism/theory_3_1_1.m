% Bloch sphere
n=2
ket_psi_n=eye(n)
c=sym('c',[1 n])
ket_psi=c(1)*ket_psi_n(:,1)+c(2)*ket_psi_n(:,2)
%  c1
%  c2

% cn=Re(cn)+i*Im(cn)

ket0=[1;0]
ket1=[0;1]
syms teta phi
ket_Psi=cos(teta)*ket0+exp(i*phi)*sin(teta)*ket1
ket_Psi=cos(teta)*ket0+(cos(phi)+i*sin(phi))*sin(teta)*ket1