% x<0
clear
syms x hp m E U0 real 
syms a b c k kn

psi1=b*exp(i*k*x)+c*exp(-i*k*x)
% where
% k=sqrt(2*m*E))/hp
% x>0
psi2=a*exp(i*kn*x)
% where
% kn=sqrt(2*m*(E+U0))/hp

subs(psi1,x,0)
subs(psi2,x,0)
% a=b+c
subs(diff(psi1,x),x,0)
subs(diff(psi2,x),x,0)
% a*kn=b*k-c*k

% c/b=(kn-k)/(kn+k)
% a/b=k/(k+kn)

ja=(i*hp/(2*m))*(psi2*diff(psi2',x)-psi2'*diff(psi2,x))
ja=simplify(ja)
% (hp*exp(-(x*(abs(kn)^2*1i - kn^2*1i))/kn)*abs(a)^2*(kn^2 + abs(kn)^2))/(2*kn*m)
ja=abs(a)^2*hp*kn/m
jb=abs(b)^2*hp*k/m
jc=abs(c)^2*hp*k/m

R=jc/jb
% abs(c)^2/abs(b)^2
R=((kn-k)/(kn+k))^2
R=subs(R,[k kn],[sqrt(2*m*E)/hp sqrt(2*m*(E+U0))/hp])
pretty(R)
R=(sqrt(E+U0)-sqrt(E))^2/(sqrt(E+U0)+sqrt(E))^2

T=ja/jb
% (kn*abs(a)^2)/(k*abs(b)^2)
T=(k/(k+kn))^2*kn/k
T=subs(T,[k kn],[sqrt(2*m*E)/hp sqrt(2*m*(E+U0))/hp])
pretty(T)
T=2*sqrt(E)*sqrt(E+U0)/(sqrt(E+U0)+sqrt(E))^2

R1=simplify(subs(R,E,U0/3))
R1=vpa(R1)
% 0.111
T1=1-R1
% 0.889

R2=simplify(subs(R,[E U0],[4 12]))
% 1/9
T2=1-R2
% 8/9