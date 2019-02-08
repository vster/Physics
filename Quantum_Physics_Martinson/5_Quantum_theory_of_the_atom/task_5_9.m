% S = 1e15 W/m^2
% S=E0*H0/2=sqrt(eps0/mu0)*E0^2/2=eps0*c*E0^2/2
clear
syms eps0 c E0 S
eq1=S==eps0*c*E0^2/2
E0sol=solve(eq1,E0)
%   (2^(1/2)*S^(1/2))/(c^(1/2)*eps0^(1/2))
E0=E0sol(1)
digits(2)
E02=vpa(subs(E0,[S eps0 c],[1e15 8.85e-12 3e8]))
% 8.7e8 V/m

