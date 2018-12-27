clear
syms a x real
syms n
psi=sqrt(2/a)*sin(pi*n*x/a)

xm=int(psi'*OperX(psi),x,0,a)
% a/2 + (2*((a^2*sin(pi*n)^2)/4 - (a^2*n*pi*sin(2*pi*n))/4))/(a*n^2*pi^2)
%                =0                         =0   
pretty(xm)
xm=subs(xm,[sin(pi*n) sin(2*pi*n)],[0 0])
% a/2

pxm=int(psi'*OperPx(psi),x,0,a)
% -(hp*sin(pi*n)^2*1i)/a
%      =0
% pxm=0
pxm=subs(pxm,sin(pi*n),0)
% 0

x2m=int(psi'*OperX2(psi),x,0,a)
% a^2/3 - (a^2*cos(2*pi*n))/(2*n^2*pi^2) - (a^2*sin(2*pi*n))/(2*n*pi) + (a^2*sin(2*pi*n))/(4*n^3*pi^3)
x2m=subs(x2m,[cos(2*pi*n) sin(2*pi*n)],[1 0])
% a^2/3 - a^2/(2*n^2*pi^2)

sigx2=x2m-xm^2
% a^2/12 - a^2/(2*n^2*pi^2)

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

