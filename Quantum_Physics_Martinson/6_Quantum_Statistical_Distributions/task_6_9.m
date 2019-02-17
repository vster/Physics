% Find the compressibility factor (elasticity coefficient) alfa
% of the electron gas in copper at a temperature T=0 K
clear
syms p V(p)
% alfa=1/V*dV/dp=d(log(V))/dp
alfa=diff(log(V),p)
% where V-volume, p-pressure
% n=N/V => V=N/n => log(V)=log(N)-log(n)
% where log(N)=const
syms N n(p)
alfa=diff(log(N)-log(n),p)
% -diff(n(p), p)/n(p)

% p=2/3*n*<E>
syms EF0 hp m0 n real
syms pi
Em=3/5*EF0
Em=subs(Em,EF0,(hp^2/(2*m0))*(3*pi^2*n)^(2/3))
p1=2/3*n*Em
% (hp^2*n*(3*n*pi^2)^(2/3))/(5*m0)
syms p
eq1=p==(hp^2*n*(3*n*pi^2)^(2/3))/(5*m0)
nsol=solve(eq1,n)
n=nsol(1)
% (15^(3/5)*m0^(3/5)*p^(3/5))/(3*pi^(4/5)*(hp^6)^(1/5))
syms A
n=A*p^(3/5)
% where 
% A=(15^(3/5)*m0^(3/5))/(3*pi^(4/5)*(hp^6)^(1/5))=const
alfa=diff(log(n),p)
% 3/(5*p)
alfa=subs(alfa,p,p1)
% (3*m0)/(hp^2*n*(3*n*pi^2)^(2/3))

syms EF0 hp m0 n
eq2=EF0==(hp^2/(2*m0))*(3*pi^2*n)^(2/3) 
n1=solve(eq2,n)
% ((2*EF0*m0)/hp^2)^(3/2)/(3*pi^2)
alfa=simplify(subs(alfa,n,n1))
% (9*2^(1/2)*pi^2*(hp^2)^(3/2))/(8*EF0^(5/2)*m0^(3/2))
pretty(alfa)
alfa1=(36*pi^2*hp^3/(8*m0)^(3/2))*EF0^(-5/2)
digits(3)
alfa2=vpa(subs(alfa1,[hp m0 EF0],[1.05e-34 9.1e-31 7.04*1.6e-19]))
% 1.56e-11 1/Pa = 1.56e-6 1/atm  ? (1.38e-6 1/atm - book)
