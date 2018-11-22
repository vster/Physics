clear
digits(4)
syms A lam x w t real
assume(lam>0)
Psi=A*exp(-lam*abs(x))*exp(-i*w*t)

I=int(Psi'*Psi,x,-inf,inf)
% A^2/lam=1 => A=sqrt(lam)

xm=int(Psi'*x*Psi,x,-inf,inf)
% 0

x2m=int(Psi'*x^2*Psi,x,-inf,inf)
% A^2/(2*lam^3)
x2m=subs(x2m,A^2,lam)
% 1/(2*lam^2)

sigx=sqrt(x2m-xm^2)
% 2^(1/2)/(2*lam)

% w(x in (-sigx,+sigx))
w=A^2*int(exp(-2*lam*abs(x)),x,-sigx,sigx)
% -(A^2*(exp(-2^(1/2)) - 1))/lam
w=subs(w,A^2,lam)
% 1 - exp(-2^(1/2))
vpa(w)*100
% 75.69% 