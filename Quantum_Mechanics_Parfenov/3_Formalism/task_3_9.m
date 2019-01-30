clear
A=[1 -3 4; 4 -7 8; 6 -7 7]
I=eye(3)
syms lam 
syms u1 u2 u3
ket_u=[u1;u2;u3]
det_A=det(A-lam*I)
lamsol=solve(det_A)
% -1 -1 3

eq=(A-lam*I)*ket_u
% lam=-1
eq1=subs(eq,lam,lamsol(1))
V1=[1;2;1]

% lam=3
syms u1 u2 u3
eq2=subs(eq,lam,lamsol(3))
[u1 u2 u3]=solve(eq2,u1,u2,u3)
V2=[1;2;2]

[V,D]=eig(A)
% V =
%    0.3333   -0.4082   -0.4082
%    0.6667   -0.8165   -0.8165
%    0.6667   -0.4082   -0.4082
% D =
%    3.0000         0         0
%         0   -1.0000         0
%         0         0   -1.0000