% Quantum mechanical description of a multi-particle system
% N particles
% m01, m02, .... m0N - masses
% qi - coords
% Psi(x1,y1,z1...xi,yi,zi...xN,yN,zN,t) = 
%     Psi(q1,...qi,...qN,t)
% dVi=dxi*dyi*dzi
% w(q1,...qi,...qN,t)=|Psi(q1,...qi,...qN,t)|^2*dV1...dVi...dVN

% Wave function Psi(q1,...qi,...qN,t) find from
% i*hp*dPsi/dt=OpH_Psi
% OpH=sum(i=1:N)((-hp^2/(2*m0))*OpDi+Ui(xi,yi,zi,t)) + 
%     +sum(i~=j=1:N)Uij(xi,yi,zi,xj,yj,zj)             (6.1)
% here
% OpDi - laplacian(xi,yi,zi)
% Ui(xi,yi,yi) - force function for i-particle in the external field
% Uij(xi,yi,zi,xj,yj,zj)  - interaction energies i- and j- particles

% In simplest case for 2 particles
% OpH=-hp^2/(2*m01)*OpD1+U1(x1,y1,z1,t)- hp^2/(2*m02)*OpD2+
%    +U2(x2,y2,z2,t)+U12(x1,y1,z1,x2,y2,z2)            (6.2)

% Indistinguishability of identical particles in quantum mechanics

% Hamiltonian for a system of N identical particles we get from (6.1)
% OpH=sum(i=1:N)(-hp^2/(2*m0)*OpDi+U(xi,yi,zi,t) + 
%      +sum(i~=j=1:N)Uij(xi,yi,zi,xj,yj,zj)            (6.3)

% We introduce a permutation operator OpPij of particles 
% in the system under consideration.
% OpPij_Psi(q1...qi...qj...qN,t) = Psi(q1...qj...qi...qN,t)     (6.4)

% The condition of the immutability of the state when the permutation
% OpPij_OpH=OpH*OpPij                              (6.5)

% i*hp*dPsi/dt=OpH_Psi
% i*hp*d/dt(OpPij_Psi)=OpPij(OpH_Psi)
% using (6.5) we get
% i*hp*d/dt(OpPij_Psi)=OpH(OpPij_Psi)
% so
% OpPij_Psi - decision of Shredinger equation too


% Symmetric and antisymmetric states
% OpPij_Psi(q1...qi...qj...qN,t) = 
%    = Psi(q1...qj...qi...qN,t)                  (6.6)
% OpPij_Psi=lam*Psi                              (6.7)
% OpPij^2_Psi=lam*OpPij_Psi
% Psi=lam^2*Psi
% lam^2=1 => lam=+-1
% These functions are called respectively symmetric and antisymmetric 
% with respect to the permutation of particles.

% symmetric
% OpPij_PsiS(q1...qi...qj...qN,t) = 
%    =PsiS(q1...qi...qj...qN,t)

% antisymmetric
% OpPij_PsiA(q1...qi...qj...qN,t) = 
%    =-PsiA(q1...qi...qj...qN,t)

% Bosons and Fermions

% Particles whose states are described by symmetric wave functions 
% are called Bose particles or bosons.
% All bosons have zero or integer spin.

% Particles whose states are described by antisymmetric wave functions 
% are called Fermi particles or fermions.
% Fermions include all particles with half-integer spin.

