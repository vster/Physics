% Standing waves
clear
syms E0 w t k x
Epad=E0*cos(w*t-k*x)
Elev1=-E0*cos(w*t+k*x)
E=Epad+Elev1
% E0*cos(k*x - t*w) - E0*cos(k*x + t*w)
E=simplify(E)
% E=2*E0*sin(k*x)*sin(t*w)
syms A(t)
E=A(t)*sin(k*x)
% where A(t)=2*E0*sin(w*t)

% If k*x(n)=n*pi then node occurs, where E=0 at any t.
syms n lam
x(n)=n*pi/k
x(n)=n*pi/(2*pi/lam)
x(n)=n*lam/2

% Standing waves on a string
syms y0 w t k x
y=y0*(cos(w*t-k*x)-cos(w*t+k*x))
y=simplify(y)
% 2*y0*sin(k*x)*sin(t*w)
% L=lam/2,2*(lam/2),3*(lam/2),4*(lam/2).
% n*lam(n)/2=L => lam(n)=2*L/n
syms n L
lam(n)=2*L/n
