clear
syms a x hp real
assume(a>0)
assume(hp>0)
syms n integer
psi=sqrt(2/a)*sin(pi*n*x/a)

xm=int(psi'*OperX(psi),x,0,a)
xm=subs(xm,[sin(pi*n) sin(2*pi*n)],[0 0])
% a/2
x2m=int(psi'*OperX2(psi),x,0,a)
x2m=subs(x2m,[cos(2*pi*n) sin(2*pi*n)],[1 0])
% a^2/3 - a^2/(2*n^2*pi^2)

sigx2=x2m-xm^2
% a^2/12 - a^2/(2*n^2*pi^2)

pxm=int(psi'*OperPx(psi),x,0,a)
pxm=subs(pxm,[sin(pi*n) sin(2*pi*n)],[0 0])
% 0

px2m=int(psi'*OperPx2(psi),x,0,a)
% -(hp^2*n*pi*(sin(2*pi*n) - 2*pi*n))/(2*a^2)
px2m=subs(px2m,[sin(pi*n) sin(2*pi*n)],[0 0])
% (hp^2*n^2*pi^2)/a^2

sigpx2=px2m-pxm^2
% (hp^2*n^2*pi^2)/a^2

syms hp real
assume(hp>0)
sigp_sigx=sqrt(sigx2*sigpx2)
% n*pi*((hp^2*(a^2/12 - a^2/(2*n^2*pi^2)))/a^2)^(1/2)
sigp_sigx=simplify(sigp_sigx)
% (3^(1/2)*hp*(pi^2*n^2 - 6)^(1/2))/6  ( = hp/2*sqrt(n^2*pi^2/3-2) )
pretty(sigp_sigx)

sigp_sigx=vpa(subs(sigp_sigx,n,1))
% 0.568*hp

function X=OperX(psi)
syms x real
X=x*psi;
end

function X2=OperX2(psi)
syms x real
X2=x^2*psi;
end

function Px=OperPx(psi)
syms hp x real
Px=-1i*hp*diff(psi,x);
end

function Px2=OperPx2(psi)
syms hp x real
Px2=OperPx(OperPx(psi))
end