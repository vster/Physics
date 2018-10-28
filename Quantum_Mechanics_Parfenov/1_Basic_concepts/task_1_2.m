syms x L
% a)
Psi=sin(pi*x/L)
N=int(Psi'*Psi,x,0,L)
% L/2
Psi=simplify(Psi/sqrt(N))
% (2^(1/2)*sin((pi*x)/L))/L^(1/2)

syms r a0 real
assume(a0>0)
Psi=exp(-r/a0)
Psi_2=Psi'*Psi

N=int(Psi_2,r,0,+inf)
% a0/2
Psi=Psi/sqrt(N)
% (2^(1/2)*exp(-r/a0))/a0^(1/2)

% b)
syms m phi r0 r real
assume(r0>0)
Psi=exp(i*m*phi)
N=int(int(r*Psi'*Psi,r,0,r0),phi,0,2*pi)
% pi*r0^2
Psi=simplify(Psi/sqrt(N))
% exp(m*phi*1i)/(r0*pi^(1/2))

syms r a0 real
assume(a0>0)
Psi=exp(-r/a0)
N=int(r*Psi'*Psi,r,0,inf)
% a0^2/4
Psi=simplify(Psi/sqrt(N))
% (2*exp(-r/a0))/a0 - ?