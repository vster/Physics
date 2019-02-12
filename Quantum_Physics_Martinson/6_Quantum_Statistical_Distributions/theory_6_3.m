% Bose-Einstein distribution

% Maxwell distribution
% dNM=AM*exp(-EK/(k*T))*dpx*dpy*dpz                 (6.31a)
% Boltzmann distribution
% dNB=AB*exp(-U/(k*T))*dx*dy*dz                     (6.31b)

% Bose-Einstein distribution derivation
clear
syms N Z
Omega=factorial(N+Z-1)/(factorial(N)*factorial(Z-1))     % (6.32)
Om1=subs(Omega,[N Z],[3 3])
% 10

% f(x,y,z,px,py,pz)=E=const
% i-th layer is bounded by
% f(x,y,z,px,py,pz)=E(i)
% and
% f(x,y,z,px,py,pz)=E(i+1)
% The layer is thin if |E(i+1)-E(i)|<<E(i)

% Let volume of i-th layer is Z(i)*(2*pi*hp)^3
syms i N(i) Z(i)
Om(i)=factorial(N(i)+Z(i)-1)/(factorial(N(i))*factorial(Z(i)-1))
Omega=symprod(Om(i),i)                     % (6.33)
% symprod(factorial(N(a) + Z(a) - 1)/(factorial(N(a))*factorial(Z(a) - 1)), a, 1, i)
% N=symsum(N(i),i)=const
% E=symsum(N(i)*E(i),i)=const
syms k
S=k*log(Omega)
% k*log(symprod(factorial(N(a) + Z(a) - 1)/(factorial(N(a))*factorial(Z(a) - 1)), a, 1, i))
syms a
S=k*symsum(log(factorial(N(a) + Z(a) - 1))-log(factorial(N(a)))-...
    log(factorial(Z(a) - 1)),a,1,i)
% log(factorial(n))~n*log(n)-n
S=k*symsum((N(a) + Z(a) - 1)*log(N(a) + Z(a) - 1)-(N(a) + Z(a) - 1)-...
    N(a)*log(N(a))+N(a)-(Z(a) - 1)*log(Z(a) - 1)+(Z(a) - 1),a,1,i)
S=simplify(S)
% k*symsum(log(N(a) + Z(a) - 1)*(N(a) + Z(a) - 1) - log(N(a))*N(a) - log(Z(a) - 1)*(Z(a) - 1), a, 1, i)
syms C
S=k*symsum(log(N(a) + Z(a) - 1)*(N(a) + Z(a) - 1) - log(N(a))*N(a), a, 1, i)+C  % (6.35)
% ...
syms E mu k T
nBE=1/(exp((E-mu)/(k*T))-1)                       % (6.39)

% If <n>BE <<1 then
% nBE~exp(-(E-mu)/(k*T))=A*exp(-E/(k*T))
% In the case of a rarefied Bose gas, the Bose-Einstein distribution 
% transforms into the classical Maxwell-Boltzmann distribution.

% The case of a variable number of particles
% sum(i)N(i)=N ~= const
% <n>BE=1/(exp(E/(k*T))-1)                  (6-42)
% For photon gas
% <nf>=1/(exp(hp*w/(k*T))-1)                (6-43)
