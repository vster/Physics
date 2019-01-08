% Wave functions of a particle in a one-dimensional 
% potential well

% From (4.14) and (4.15) we get
clear
syms A n x a real
psin(x)=A*sin(pi*n*x/a)
I=int(psin^2,x,0,a)
% -(A^2*a*(sin(2*pi*n) - 2*pi*n))/(4*n*pi)
I=subs(I,sin(2*pi*n),0)
% (A^2*a)/2=1 => A=sqrt(2/a)
psin(x)=subs(psin(x),A,sqrt(2/a))
% 2^(1/2)*sin((pi*n*x)/a)*(1/a)^(1/2), 0<x<a,n=1,2,3...

% P=int(x1:x2)abs(psin(x))^2*dx
% P=int(x1:x2)psin(x)'*psin(x)*dx           (4.19)