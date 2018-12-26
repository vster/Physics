% T+R=1
% T=ja/jb
% R=jc/jb
% ja/jb+jc/jb=(ja+jc)/jb=jb/jb=1

clear
syms x hp m E U0 real
syms a b c k kn

psi1=b*exp(i*kn*x)+c*exp(-i*kn*x)

psi2=a*exp(i*k*x)
ja=(i*hp/(2*m))*(psi2*diff(psi2',x)-psi2'*diff(psi2,x))
ja=simplify(ja)
% (hp*exp(-(x*(abs(k)^2*1i - k^2*1i))/k)*abs(a)^2*(k^2 + abs(k)^2))/(2*k*m)
% ja=hp*abs(a)^2*k/m
% ja=abs(a)^2*va=abs(a)^2*pa/m=abs(a)^2*k*hp/m
ja=abs(a)^2*hp*k/m
jb=abs(b)^2*hp*kn/m
jc=abs(c)^2*hp*kn/m

T=ja/jb
% (k*abs(a)^2)/(kn*abs(b)^2)
