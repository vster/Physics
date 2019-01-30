% a)
% [1 0]
% [0 -1]

% b)
% [1 2]
% [2 1]

% a)
clear
A=[1 0;0 -1]
I=eye(2)
syms lam 
syms u1 u2
ket_u=[u1;u2]
det_A=det(A-lam*I)
lamsol=solve(det_A)
% -1 1

eq=(A-lam*I)*ket_u
% lam=-1
eq1=subs(eq,lam,lamsol(1))
V1=[1;0]
% lam=1
eq2=subs(eq,lam,lamsol(2))
V2=[0;1]

[V,D]=eig(A)
% V=
%      0     1
%      1     0
% D=
%     -1     0
%      0     1

% b)
B=[1 2;2 1]
I=eye(2)
syms lam 
syms u1 u2
ket_u=[u1;u2]

det_B=det(B-lam*I)
% lam^2 - 2*lam - 3
lamsol=solve(det_B)
% -1 3

eq=(B-lam*I)*ket_u
% lam=-1
eq1=subs(eq,lam,lamsol(1))
% u1+u2=0
V1=[-1;1]
V1=[-1/sqrt(2);1/sqrt(2)]
% lam=3
eq2=subs(eq,lam,lamsol(2))
% u2-u1=0
V2=[1;1]
V2=[1/sqrt(2);1/sqrt(2)]

[V,D]=eig(B)
% V =
%   -0.7071    0.7071
%    0.7071    0.7071
% D =
%    -1     0
%     0     3