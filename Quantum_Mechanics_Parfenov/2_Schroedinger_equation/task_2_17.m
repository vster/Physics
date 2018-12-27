clear
syms a x hp real
assume(a>0)
syms n integer
psi=sqrt(2/a)*sin(pi*n*x/a)

xpxm=int(psi'*OperX(OperPx(psi)),x,0,a)
% (hp*cos(2*pi*n)*1i)/2 - (hp*sin(2*pi*n)*1i)/(4*n*pi)
xpxm=subs(xpxm,[cos(2*pi*n) sin(2*pi*n)],[1 0])
% (hp*1i)/2

pxxm=int(psi'*OperPx(OperX(psi)),x,0,a)
% - hp*1i + (hp*cos(2*pi*n)*1i)/2 + (hp*sin(2*pi*n)*1i)/(4*n*pi)
pxxm=subs(pxxm,[cos(2*pi*n) sin(2*pi*n)],[1 0])
% -(hp*1i)/2