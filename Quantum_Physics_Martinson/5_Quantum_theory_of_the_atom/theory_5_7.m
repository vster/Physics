% Forced emission of atoms

% Quantum Theory of Equilibrium Radiation

% E2>E1
% hp*w=E2-E1                          (5.68)
% N=N1+N2
% N1 and N2 - occupancy of corresponding energy levels
% Boltzmann distribution formula
% N2/N1=exp(-(E2-E1)/k*T)             (5.69)

% Spontaneous emission probability
% Z21=A*N2                            (5.70)
% The rate of transition of atoms from the ground to the excited state
% Z12=B12*N1*u(w,T)                   (5.71)
% Matter-radiation system equilibrium
% Z12=Z21 
% B12*N1*u(w,T)=A*N2                  (5.72)

% Equilibrium condition cannot be met at high temperatures.
% u(w,T)=A/B12*(N2/N1)=A/B12*exp(-(E2-E1)/(k*T))      (5.73)
% If T->inf then A/B12*exp(-(E2-E1)/(k*T)) -> A/B12

% Einstein noted that a stimulated emission process 
% takes place in the system
% Z21'=B21*N2*u(w,T)                   (5.74)
% Z12=Z21+Z21'
% or
% B12*N1*u(w,T)=A*N2+B21*N2*u(w,T)                 (5.75)
% B12*u(w,T)=A*N2/N1+B21*N2/N1*u(w,T)              (5.76)

% Note that N2->N1 at T->inf, then
% B12=B21=B                                   (5.77)
% Convert (5.75) to
% u(w,T)=A/(B*(N1/N2)-1)=A/(B*(exp((E2-E1)/(k*T))-1))
% As E2-E1=hp*w, then
clear
syms A B hp w k T c real
u(w,T)=(A/B)*1/(exp((hp*w)/(k*T))-1)        % (5.78)
% Compare (5.78) and (1.38) we see, that this formulas match, if
syms pi
B=(pi^2*c^3/(hp*w^3))*A                     % (5.79)


% Environments with inverse population of energy levels

% Booger law
% I(z)=I0*exp(-mu*z)                          (5.80)

% D_u(w,T)/u(w,T)=B*hp*w*(N2-N1)*tau          (5.81)
% From (5.81) follows that
% D_u(w,T)<0 (the medium absorbs radiation) if N2<N1
% D_u(w,T)>0 (medium enhances radiation) if N2>N1
