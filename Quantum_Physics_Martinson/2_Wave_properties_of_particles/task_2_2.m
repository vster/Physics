% L=1e-15 m

% lamB<=l
clear
syms hp pi Ek m0 c L
eq1= (2^(1/2)*hp*pi)/((Ek*m0)^(1/2)*(Ek/(2*c^2*m0) + 1)^(1/2))==L
EkSol=solve(eq1,Ek)
Ek=EkSol(1)
% (c*(L^2*c^2*m0^2 + 4*pi^2*hp^2)^(1/2) - L*c^2*m0)/L
pretty(Ek)
Ek=m0*c^2*(sqrt(1+(4*pi^2*hp^2)/(m0^2*c^2*L^2))-1)
% LamK=2*pi*hp/(m0*c)
syms LamK
Ek=m0*c^2*(sqrt(1+LamK^2/L^2)-1)
% If for electron LamK=2.43e-12 m then LamK/L>>1
% sqrt(1+LamK^2/L^2)~ LamK/L
% Ek >= m0*c^2*LamK/L
Ek=m0*c^2*LamK/L
syms E0
Ek=E0*LamK/L

% For electrons E0=0.511 MeV
digits(3)
Ek1=vpa(subs(Ek,[E0 LamK L],[0.511 2.43e-12 1e-15]))
% 1244.0 MeV ~ 1.2 GeV

% For protons E0=938.2 MeV, LamK=1.32e-15
Ek=E0*(sqrt(1+LamK^2/L^2)-1)
Ek2=vpa(subs(Ek,[E0 LamK L],[938.2 1.32e-15 1e-15]))
% 615.0 MeV ~ 0.6 GeV