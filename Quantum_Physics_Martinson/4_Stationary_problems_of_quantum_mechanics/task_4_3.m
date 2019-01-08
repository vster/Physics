% 0<x<q/3,0<y<a/3
clear
syms x y a hp m0 pi real
assume(a>0)
syms n1 n2 integer
psin1n2(x,y)=(2*sin((pi*n1*x)/a)*sin((pi*n2*y)/a))/a
% (2*sin((pi*n1*x)/a)*sin((pi*n2*y)/a))/a

En1n2=(hp^2*pi^2*(n1^2 + n2^2))/(2*a^2*m0)
% (hp^2*pi^2*(n1^2 + n2^2))/(2*a^2*m0)

% I excited state [n1,n2]=[1,2] or [2,1]
% II excited state [n1,n2]=[2,2]

psi22(x,y)=subs(psin1n2(x,y),[n1 n2],[2 2])
% (2*sin((2*pi*x)/a)*sin((2*pi*y)/a))/a

P=int(int(psi22(x,y)^2,x,0,a/3),y,0,a/3)
% ((pi*3^(1/2))/12 + 3/64)/pi^2 + 1/9
digits(3)
vpa(P)
% 0.162  -?   (0.07 - ?)

Eex1=subs(En1n2,[n1 n2],[1 2])
% (5*hp^2*pi^2)/(2*a^2*m0)
Eex2=subs(En1n2,[n1 n2],[2 2])
% (4*hp^2*pi^2)/(a^2*m0)

DE=Eex2-Eex1
% (3*hp^2*pi^2)/(2*a^2*m0)
