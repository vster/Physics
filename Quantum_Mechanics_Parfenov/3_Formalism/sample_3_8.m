clear
OpA=[1 1;1 1]
I=eye(2)
syms lam 
syms u1 u2
ket_u=[u1;u2]
det_A=det(OpA-lam*I)
lamsol=solve(det_A)
% 0 2
eq1=(OpA-lam*I)*ket_u

% lam=0
eq11=subs(eq1,lam,lamsol(1))
% u1+u2=0
% V1=[-1;1]

% lam=2
eq12=subs(eq1,lam,lamsol(2))
% u2-u1=0
% V2=[1;1]

% VN1=[-1/sqrt(2); 1/sqrt(2)]
% VN2=[1/sqrt(2); 1/sqrt(2)]

[V,D]=eig(OpA)
% V
%    -0.7071    0.7071
%     0.7071    0.7071
% D
%      0     0
%      0     2

