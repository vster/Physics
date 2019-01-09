clear
syms A t x a hp m real
syms pi
psi1=sin(pi*x/a)
psi2=sin(2*pi*x/a)
psi=A*(psi1+psi2)

% a)
In=int(psi'*psi,x,0,a)
% A^2*a=1 => A=1/sqrt(a)
psi=subs(psi,A,1/sqrt(a))

syms n integer
assume(n>=1)
Psi1=psi1*exp(-i*pi^2*hp*t/(2*a^2*m))
Psi2=psi2*exp(-i*2*pi^2*hp*t/(2*a^2*m))
% b)
Psi=1/sqrt(a)*(Psi1+Psi2)
% (sin((pi*x)/a)*exp(-(hp*t*pi^2*1i)/(2*a^2*m)) + sin((2*pi*x)/a)*exp(-(hp*t*pi^2*1i)/(a^2*m)))/a^(1/2)
Psi22=expand(Psi^2)

% c)
xm=int(Psi'*x*Psi,x,0,a)
xm=expand(xm)
% a/2 - (8*a*exp(-(hp*t*pi^2*1i)/(2*a^2*m)))/(9*pi^2) - (8*a*exp((hp*t*pi^2*1i)/(2*a^2*m)))/(9*pi^2)
xm= a/2 - (16*a/(9*pi^2))*cos((hp*t*pi^2)/(2*a^2*m))

digits(3)
osc=vpa((16*a/(9*pi^2)))
% 0.18*a

% d)
pxm=int(Psi'*OperPx(Psi),x,0,a)
pxm=simplify(pxm)
% (8*hp*sin((hp*t*pi^2)/(2*a^2*m)))/(3*a)
pretty(pxm)

E(n)=pi^2*hp^2*n^2/(2*a^2*m)
E1=E(1)
% (hp^2*pi^2)/(2*a^2*m)
% pxm=(8*hp/(3*a))*sin(E1*t/hp)

% e)
E(1)
% (hp^2*pi^2)/(2*a^2*m)
E(2)
% (2*hp^2*pi^2)/(a^2*m)

c(n)=sqrt(2/a)*int(sin(n*pi*x/a)*psi,x,0,a)
% piecewise(n in {1, 2}, (2^(1/2)*a^(1/2)*(1/a)^(1/2))/2, n ~= 1 & n ~= 2, (2^(1/2)*a^(1/2)*sin(pi*n)*(n^2 + 2)*(1/a)^(1/2))/(pi*(n^4 - 5*n^2 + 4)), a == pi & n in {1, 2}, 2^(1/2)/2, a == pi & 3 <= n & in(n, 'integer'), 0, a == pi & 3 <= n & in(n, 'integer'), -(2^(1/2)*sin(pi*n))/(pi*(n^2 - 1)), a == pi & in(n, 'integer') & (n == 1 | 3 <= n), (0^(n - 1)*2^(1/2))/2)

simplify(c(1)^2)
% 1/2
simplify(c(2)^2)
% 1/2

Hm=1/2*(E(1)+E(2))
% (5*hp^2*pi^2)/(4*a^2*m)