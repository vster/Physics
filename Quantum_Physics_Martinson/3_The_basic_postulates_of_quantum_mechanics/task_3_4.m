clear
syms x t hp real
syms Psi1(x,t) Psi2(x,t)

I1=int(Psi1'*OperPx(Psi2),x,-inf,inf)
% int(-hp*conj(Psi1(x, t))*diff(Psi2(x, t), x)*1i, x, -Inf, Inf)

I1=... % h/i*Psi1'*Psi2(-inf:+inf)=0
   +int(Psi2*(i*hp*diff(Psi1',x)),x,-inf,inf)
% int(hp*conj(diff(Psi1(x, t), x))*Psi2(x, t)*1i, x, -Inf, Inf)

I2=int(Psi2*OperPx(Psi1)',x,-inf,inf)
% int(hp*conj(diff(Psi1(x, t), x))*Psi2(x, t)*1i, x, -Inf, Inf)

% I1=I2