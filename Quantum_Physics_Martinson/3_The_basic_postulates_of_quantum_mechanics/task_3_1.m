clear
syms r a hp E t A real
Psi(r,t)=A*exp(-r/a)*exp(-i*E*t/hp)
% A-?

% a)
assume(A>0)
assume(a>0)
I=int(abs(Psi(r,t))^2*4*pi*r^2,r,0,inf)
% pi*A^2*a^3 =1
An=solve(I==1,A)
% A=1/(a^(3/2)*pi^(1/2))

% b)
% dP=|Psi|^2*4*pi*r^2*dr=f(r)*dr
f(r)=abs(Psi)^2*4*pi*r^2
% 4*A^2*r^2*pi*exp(-(2*r)/a)
f(r)=subs(f(r),A,An)
% (4*r^2*exp(-(2*r)/a))/a^3
dfr=diff(f(r),r)
% (8*r*exp(-(2*r)/a))/a^3 - (8*r^2*exp(-(2*r)/a))/a^4
r1=solve(dfr==0,r)
% a