% Fermi-Dirac distribution
clear
syms Z N
Omega=factorial(Z)/(factorial(N)*factorial(Z-N))          % (6.44)
Om1=subs(Omega,[Z N],[4 2])
% 6
% f(x,y,z,px,py,pz)=E(i)=const
% and
% f(x,y,z,px,py,pz)=E(i+1)=const
% |E(i+1)-E(i)|<<E(i)
syms i Z(i) N(i)
Om(i)=factorial(Z(i))/(factorial(N(i))*factorial(Z(i)-N(i)))    
Omega=symprod(Om(i),i)
% symprod(factorial(Z(a))/(factorial(N(a))*
%                    *factorial(Z(a) - N(a))), a, 1, i)     (6.45)
% sum(i)=N(i)=const
% sum(i)N(i)*E(i)=E=const
syms k
S=k*log(Omega)
% k*log(symprod(factorial(Z(a))/(factorial(N(a))*factorial(Z(a) - N(a))), a, 1, i))
S=k*symsum(log(factorial(Z(i)))-log(factorial(N(i)))-log(factorial(Z(i) - N(i))),i)
% log(factorial(n))~n*log(n)-n
S=k*symsum(Z(i)*log(Z(i))-Z(i)-N(i)*log(N(i))+N(i)-...
    (Z(i)-N(i))*log(Z(i)-N(i))+(Z(i)-N(i)),i)
% ...
syms E mu k T
nFD=1/(exp((E-mu)/(k*T))+1)                      % (6.48)

% Let nFD=1/(exp((E-mu)/(k*T))+1) << 1
% This condition executed at exp((E-mu)/(k*T))>>1 or
% (E-mu)/(k*T)>>1
nFD=exp(-(E-mu)/(k*T))
% or
syms A
nFD=A*exp(-E/(k*T))
% where A=exp(mu/(k*T))

% So, Fermi-Dirac distribution with small filling numbers 
% or in the case of a rarefied Fermi gas transforms to the 
% classical Maxwell-Boltzmann distribution

% The chemical potential of mu in the case of Fermi particles 
% is called the Fermi level or Fermi level and is denoted by Ef
syms Ef
nFD=1/(exp((E-Ef)/(k*T))+1)                 % (6.49)

% nFD=1 at E<Ef(0)
% and
% nFD=0 at E>Ef(0)

syms m0
pf=sqrt(2*m0*Ef)
vF=sqrt(2*Ef/m0)                              % (6.50)


