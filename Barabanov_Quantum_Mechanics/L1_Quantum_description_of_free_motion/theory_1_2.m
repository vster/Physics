% Psi(x,t)=Psi0*exp(i*(p*x-E*t)/hp)
clear
syms x p r E t hp real
assume(hp>0)
syms Psi0
Psi(x,t)=Psi0*exp(i*(p*x-E*t)/hp)

syms C(p)
Psi(x,t)=int(C(p)*Psi0*exp(i*(p*x-E*t)/hp),p,-inf,inf)
% this is wave packet

% I=int(|Psi(x,t)|^2*dx)
I=int(Psi'*Psi,x,-inf,inf)
% int(conj(int(Psi0*exp(-(E*t*1i - p*x*1i)/hp)*C(p), p, -Inf, Inf))*int(Psi0*exp(-(E*t*1i - p*x*1i)/hp)*C(p), p, -Inf, Inf), x, -Inf, Inf)
pretty(I)

I=2*pi*hp*abs(Psi0)^2*int(abs(C(p))^2,p,-inf,inf)
pretty(I)

% Let Psi0=1/sqrt(2*pi*hp)
I=subs(I,Psi0,1/sqrt(2*pi*hp))
% int(abs(C(p))^2, p, -Inf, Inf)=1

% So, let the de Broglie wave is
Psi_p(x,t)=1/sqrt(2*pi*hp)*exp(i*(p*x-E*t)/hp)
pretty(Psi_p)

% Then wave packet is
syms Psi_p(x,t)
Psi(x,t)=int(C(p)*Psi_p(x,t),p,-inf,+inf)
% int(C(p)*Psi_p(x, t), p, -Inf, Inf)


