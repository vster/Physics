clear
syms a x real
syms A
syms n integer

psi(x)=A*(a^2-x^2)
In=int(psi'*psi,x,0,a)
% (8*a^5*abs(A)^2)/15 =1
A1=sqrt(15/(8*a^5))
psi=subs(psi,A,A1)
% (15/(8*a^5))^(1/2)*(a^2 - x^2)

c(n)=sqrt(2/a)*int(sin(n*pi*x/a)*psi,x,0,a)
% 2^(1/2)*(1/a)^(1/2)*((8^(1/2)*15^(1/2)*a^(1/2))/(8*n*pi) + (8^(1/2)*15^(1/2)*a^(1/2)*sin((pi*n)/2)^2)/(2*n^3*pi^3) - (8^(1/2)*15^(1/2)*a^(1/2)*sin(pi*n))/(4*n^2*pi^2))
c(n)=simplify(subs(c(n),[sin((pi*n)/2)^2 sin(pi*n)],[(1-(-1)^n)/2 0]))
% (15^(1/2)*a^(1/2)*(1/a)^(1/2)*(n^2*pi^2 - 2*(-1)^n + 2))/(2*n^3*pi^3)
c(n)=simplify(subs(c(n),[a^(1/2)*(1/a)^(1/2)],[1]))
% (15^(1/2)*(n^2*pi^2 - 2*(-1)^n + 2))/(2*n^3*pi^3)

digits(6)
c1_2=vpa(c(1)^2)
% 0.750344

for k=1:20
    c2_term(k)=vpa(c(k)^2);
end

c2_sum=sum(c2_term)

syms hp m
E(n)=(hp^2*n^2*sym(pi)^2)/(sym(2)*a^2*m)                % (2.17)
% <H>=sum(n=1:inf)|c(n)|^2*E(n)

Hm_term(n)=c(n)^2*E(n)
% (15*hp^2*(n^2*pi^2 - 2*(-1)^n + 2)^2)/(8*a^2*m*n^4*pi^4)