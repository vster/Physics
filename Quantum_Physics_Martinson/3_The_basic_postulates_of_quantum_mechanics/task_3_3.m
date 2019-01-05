% j-?
clear
syms A hp E t p x m0 real
Psi(x,t)=A*exp(-i/hp*(E*t-p*x))
grad_Psi=diff(Psi,x)
% (A*p*exp(-((E*t - p*x)*1i)/hp)*1i)/hp
% i*p/hp*Psi
grad_PsiS=diff(Psi',x)
% -(A*p*exp(((E*t - p*x)*1i)/hp)*1i)/hp
% -i*p/hp*Psi'

% j=(i*hp/(2*m0))*(Psi*grad(Psi')-Psi'*grad(Psi))        (3.23)
jx=(i*hp/(2*m0))*(Psi*grad_PsiS-Psi'*grad_Psi)
% (A^2*p)/m0 = k*hp*A^2/m0

% We can normalize the wave function of a free particle.
% jx=1=(A^2*p)/m0 =>
% A=sqrt(m0/p)=sqrt(1/v)
