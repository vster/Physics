% jx=1
% A-?

syms x hp m real
% j=(i*hp/(2*m))*(Psi*diff(Psi',x)-Psi'*diff(Psi,x))

syms v E t p real
Psi=1/sqrt(v)*exp(-i/hp*(E*t-p*x))

Nabla_Psi=diff(Psi,x)
% (p*exp(-((E*t - p*x)*1i)/hp)*1i)/(hp*v^(1/2))
pretty(Nabla_Psi)
syms Psi(x)
Nabla_Psi=(i*p/hp)*Psi

Nabla_PsiT=diff(Psi',x)
% -(p*exp(((E*t - p*x)*1i)/hp)*1i)/(hp*conj(v^(1/2)))
pretty(Nabla_PsiT)
syms PsiT(x)
Nabla_PsiT=-(i*p/hp)*PsiT

j=(i*hp/(2*m))*(Psi*Nabla_PsiT-PsiT*Nabla_Psi)
% (p*Psi(x)*PsiT(x))/m

syms A k real
psi(x)=A*exp(i*k*x)
j1=(i*hp/(2*m))*(psi*diff(psi',x)-psi'*diff(psi,x))
% (A^2*hp*k)/m = jx = 1
% A=sqrt(m/p)=sqrt(1/v)

