% Amplitude C(p)

% By known C(p) you can build a wave function Psi(x,t)
% Psi(x,t)=int(C(p)*Psi_p(x,t),p,-inf,inf)
% C(p)is in fact the Fourier transform of the wave function Psi(x,t)
syms x t 
syms Psi_p(x,t) C(p)
Psi(x,t)=int(C(p)*Psi_p(x,t),p,-inf,inf)
I=int(Psi_p(x,t)'*Psi(x,t),x,-inf,inf)
% int(conj(Psi_p(x, t))*int(C(p)*Psi_p(x, t), p, -Inf, Inf), x, -Inf, Inf)
% int(C(p)*int(conj(Psi_p(x, t)*Psi_p(x, t),x,-inf,inf),p,-inf,inf)
% C(p)

% C(p)=int(conj(Psi_p(x,t))*int(C(p)*Psi_p(x, t),p,-Inf,Inf),x,-Inf,Inf)

