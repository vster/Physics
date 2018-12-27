clear
syms a x hp real
assume(a>0)
syms n integer
psi=sqrt(2/a)*sin(pi*n*x/a)

P=int(psi'*psi,x,0.49*a,0.51*a)
% (sin((49*pi*n)/50)/2 - sin((51*pi*n)/50)/2)/(n*pi) + 1/50
P1=subs(P,n,1)
P1=vpa(P1)
% 0.04
P2=subs(P,n,2)
P2=vpa(P2)
% 5.26e-5