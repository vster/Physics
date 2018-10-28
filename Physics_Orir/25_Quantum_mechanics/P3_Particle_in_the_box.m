% Particle in the box

% psi(x,t)=B*exp(1i*k*x-1i*w*t)-B*exp(-1i*k*x-1i*w*t) =
%    =B*(exp(1i*k*x)-exp(-1i*k*x))*exp(-1i*w*t)

clear
syms x t k w A B 
psi=B*exp(1i*k*x-1i*w*t)-B*exp(-1i*k*x-1i*w*t)
psi=B*(exp(1i*k*x)-exp(-1i*k*x))*exp(-1i*w*t)

% sin(k*x)=(exp(1i*k*x)-exp(-1i*k*x))/2i
sin_kx=(exp(1i*k*x)-exp(-1i*k*x))/2i

y(x,t)=2i*B*exp(-1i*w*t)*sin(k*x)
% Put A=2*B*1i then
psi(x)=A*sin(k*x)                   % (25-11)
% 0=sin(k*L), if k*L=n*pi
% k(n)=n*pi/L                       (25-12)
% L=n*(lam/2)
% psi(x,n)=A*sin((n*pi/L)*x)
% p(n)=hp*k(n)
% p(n)=n*(pi*hp/L)                  (25-13)
% E(n)=p(n)^2/(2*m)=n^2*pi^2*hp^2/(2*m*L^2)         (25-14)

% Energy Scale Assessment
syms n hp m L
E(n)=n^2*pi^2*hp^2/(sym(2,'d')*m*L^2)
% (4.93*hp^2*n^2)/(L^2*m)
digits(3)
E1=subs(E,[hp m L],[1.05e-34 9.11e-31 1e-10])
E1=vpa(E1)
% 5.97e-18*n^2 J = (37.3*n^2)eV

% Example 2
% L=10e-10 m, n=2
% hf=E2-E1
% lam - ?
syms n
E1=sym(5.97e-18,'d') % J
E(n)=E1*n^2
hf=vpa(E(2)-E(1)) 
% 1.79e-17 J
h=6.6e-34
f=hf/h
% 2.71e16 1/s
c=3e8 % m/s
lam=c/f
% 1.11e-8 m = 111 A