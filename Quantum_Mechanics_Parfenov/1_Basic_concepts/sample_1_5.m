syms a L real
Psi=a
N=int(psi'*psi,x,0,L)
% L*a^2
Psi=simplify(Psi/sqrt(N))
% a/(L^(1/2)*abs(a))
% 1/sqrt(L)