clear
syms a m hp real
syms n integer
digits(10)

c(n)=(sym(8)*sym(15)^(1/2))/(n^3*sym(pi)^3)

c1_2=vpa(c(1)^2)
% 0.998555

for k=1:2:10
    c2_term(k)=vpa(c(k)^2);
end

c2_sum=sum(c2_term)
% 0.9999990484

E(n)=(hp^2*n^2*sym(pi)^2)/(sym(2)*a^2*m)                % (2.17)
% <H>=sum(n=1:inf)|c(n)|^2*E(n)

Hm_term(n)=c(n)^2*E(n)
% (480*hp^2)/(a^2*m*n^4*pi^4)
% Hm=(480*hp^2)/(a^2*m*pi^4)*sum(1:2:inf)1/n^4

syms j integer
S=symsum(1/(2*j-1)^4,j,1,inf)
% pi^4/96
Hm=simplify((480*hp^2)/(a^2*m*pi^4)*pi^4/96)
% Hm=(5*hp^2)/(a^2*m)

% Hm is very close to E1=pi^2*hp^2/(2*m*a^2)