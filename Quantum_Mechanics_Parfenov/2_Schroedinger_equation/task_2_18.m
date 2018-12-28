clear
syms x a real
psi1=sqrt(2/a)*sin(pi*x/a)
psi2=sqrt(2/a)*sin(2*pi*x/a)
I=int(psi1'*psi2,x,0,a)
% 0


