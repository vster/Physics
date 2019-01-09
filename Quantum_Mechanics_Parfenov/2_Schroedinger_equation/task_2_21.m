clear
syms t A x a hp m real
syms pi
assume(a>0)
Psi=piecewise(0<=x<=a/2,A*x,a/2<=x<=a,A*(a-x))
In=int(Psi'*Psi,x,0,a)
% (A^2*a^3)/12=1
eq1=In==1
A1=solve(eq1,A)
A1=A1(2)
% (2*3^(1/2))/a^(3/2)
Psi=subs(Psi,A,A1)
% piecewise(2*x <= a & 0 <= x, (2*3^(1/2)*x)/a^(3/2), x <= a & a <= 2*x, (2*3^(1/2)*(a - x))/a^(3/2))
syms n integer
c(n)=sqrt(2/a)*int(sin(n*pi*x/a)*Psi,x,0,a)
c(n)=simplify(c(n))
% ((-1)^(n/2 + 1/2)*6^(1/2)*(2*(-1)^n - 2))/(n^2*pi^2)

c2_term(1)=vpa(c(1)^2)
% 0.985534

digits(6)
for j=1:10
    c2_term(j)=vpa(c(j)^2);
end
sum(c2_term)

Psi_term(n)=c(n)*sqrt(2/a)*sin(n*pi*x/a)*exp(-i*(n^2*sym(pi)^2*hp*t)/(sym(2)*m*a^2))
% ((-1)^(n/2 + 1/2)*2^(1/2)*6^(1/2)*exp(-(hp*n^2*t*pi^2*1i)/(2*a^2*m))*sin((pi*n*x)/a)*(2*(-1)^n - 2))/(a^(1/2)*n^2*pi^2)
pretty(Psi_term(n))

E(n)=pi^2*hp^2*n^2/(2*a^2*m)
Hm_term(n)=c(n)^2*E(n)
% (3*(-1)^(n + 1)*hp^2*(2*(-1)^n - 2)^2)/(a^2*m*n^2*pi^2)

syms j integer
Hm_term(n)=simplify(subs(Hm_term(n),n,2*j-1))
% (48*hp^2)/(a^2*m*pi^2*(2*j - 1)^2)

Hm=symsum(Hm_term(j),j,1,inf)
% (6*hp^2)/(a^2*m)

