clear
digits(4)
syms A a m x w t hp real
assume(m>0)
assume(hp>0)
assume(a>0)
assume(A>0)
assume(hp>0)

Psi=A*exp(-a*((m*x^2/hp)+1i*t))

I=simplify(int(Psi'*Psi,x,-inf,inf))
% (2^(1/2)*A^2*hp^(1/2)*pi^(1/2))/(2*a^(1/2)*m^(1/2))
A1=solve(I==1,A)
% (2^(1/4)*a^(1/4)*m^(1/4))/(hp^(1/4)*pi^(1/4))
Psi=subs(Psi,A,A1)
% (2^(1/4)*a^(1/4)*m^(1/4)*exp(-a*((m*x^2)/hp + t*1i)))/(hp^(1/4)*pi^(1/4))

xm=int(Psi'*x*Psi,x,-inf,inf)
% 0

x2m=int(Psi'*x^2*Psi,x,-inf,inf)
% hp/(4*a*m)

sigx=sqrt(x2m-xm^2)
% hp^(1/2)/(2*a^(1/2)*m^(1/2))

pm=int(Psi'*OperPx(Psi),x,-inf,inf)
% 0

p2m=int(Psi'*OperP2x(Psi),x,-inf,inf)
% a*hp*m

sigp=sqrt(p2m-pm^2)
% a^(1/2)*hp^(1/2)*m^(1/2)

pp=sigx*sigp
% hp/2

% Impulse operator
function Px=OperPx(psi)
syms x hp real
assume(hp>0)
Px=-1i*hp*diff(psi,x);
end

function P2x=OperP2x(psi)
syms x hp real
assume(hp>0)
P2x=OperPx(OperPx(psi));
end
