clear
syms x t hp p p1 E E1 real
assume(hp>0)
Psi_p(x,t)=1/sqrt(2*pi*hp)*exp(i*(p*x-E*t)/hp)
Psi_p1(x,t)=1/sqrt(2*pi*hp)*exp(-i*(p1*x-E1*t)/hp)

% I1=int(Psi_p1*Psi_p,x,-inf,inf) = dirac(p-p1)

% I2=int(Psi_p(x1,t)'*Psi_p(x,t)*dp = dirac(x-x1)

