% a=1e-14 m
% m0=1.67e-27 kg

clear
syms r a m0 hp E real
syms pi
% U(r)=piecewise(r<a,0,inf)
syms psi(r)
% laplacian(psi(r))+2*m0*E*psi(r)/hp^2=0
dpsi=1/r^2*diff(r^2*diff(psi(r),r))
dpsi=expand(dpsi)
% (2*diff(psi(r), r))/r + diff(psi(r), r, r)
eq1=(2*diff(psi, r))/r + diff(psi, r, r)+2*m0*E*psi/hp^2
% psi=u(r)/r
syms u(r)
eq2=simplify(subs(eq1,psi(r),u(r)/r))
% (diff(u(r), r, r)*hp^2 + 2*E*m0*u(r))/(hp^2*r)
eq2=expand(eq2*r)
% diff(u(r), r, r) + (2*E*m0*u(r))/hp^2
eq2=diff(u, r, r) + (2*E*m0*u)/hp^2
uSol=dsolve(eq2)
% C39*exp((2^(1/2)*r*(-E*m0)^(1/2))/hp) + C40*exp(-(2^(1/2)*r*(-E*m0)^(1/2))/hp)
syms n A
un(r)=A*sin(n*pi*r/a)
psin(r)=un(r)/r
% psin(r)=(A*sin((pi*n*r)/a))/r

En=pi^2*hp^2*n^2/(2*m0*a^2)
digits(3)
E1=vpa(subs(En,[hp m0 a n],[1.05e-34 1.67e-27 1e-14 1]))
% 3.26e-13 J
E1/1.6e-19
% 2.04 MeV
