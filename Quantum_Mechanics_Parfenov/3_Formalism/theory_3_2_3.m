% Eigenvalues and eigenvectors of matrices

% A*x=lam*x                             (3.13)
% (A-lam*I)x=0                          (3.14)
clear
OpA=sym('a',[2 2])
syms lam u1 u2
ket_u=[u1;u2]
I=eye(2)
eq1=OpA*ket_u==lam*ket_u
eq2=(OpA-lam*I)*ket_u                  % (3.16)

Mat=OpA-lam*I
det_Mat=det(Mat)
lamsol=solve(det_Mat==0)

[V,D]=eig(OpA)

