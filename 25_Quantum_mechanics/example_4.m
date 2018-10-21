% Example_4
% U1
% a) d2psi/dx2 - ?
% b) E(n) - ?

% a)
syms A k x phi
psi=A*sin(k*x+phi)

% E=p^2/(2*m)+U1 => p=sqrt(2*m*(E-U1))
% p=hp*k => k=p/hp=sqrt(2*m*(E-U1)/hp^2)
syms m E U1 hp
k=sqrt(2*m*(E-U1)/hp^2)

d2psi=diff(psi,x,2)
% -A*k^2*sin(phi + k*x) = 
syms psi
d2psi=-k^2*psi
% -(2*psi*m*(E - U1))/hp^2
% d2psi/dx2=-(2*m/hp^2)*(E-U1)*psi                   (25-15)

% b)
% E(n)=p(n)^2/(2*m)=n^2*pi^2*hp^2/(2*m*L^2)         (25-14)
% L -> 2*x0
% K(n)=(E(n)-U1)
% K(n)=n^2*pi^2*hp^2/(2*m*L^2)
syms n hp m x0 U1
L=2*x0
K(n)=n^2*sym(pi,'r')^2*hp^2/(2*m*L^2)
% (hp^2*n^2*pi^2)/(8*m*x0^2)
E(n)=K(n)+U1
% U1 + (hp^2*n^2*pi^2)/(8*m*x0^2)