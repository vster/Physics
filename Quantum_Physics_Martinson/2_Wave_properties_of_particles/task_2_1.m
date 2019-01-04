% eps=1%
clear
syms hp Ek m0 c pi
lamB=(pi*2^(1/2)*hp)/(Ek*m0)^(1/2)             % (2.6)
lamB1=lamB/(Ek/(2*c^2*m0) + 1)^(1/2)           % (2.7)
eps=(lamB-lamB1)/lamB
eps=(2^(1/2)*((pi*2^(1/2)*hp) - (2^(1/2)*hp*pi)/((Ek/(2*c^2*m0) + 1)^(1/2))))/(2*hp*pi)
eps = 1 - 1/(Ek/(2*c^2*m0) + 1)^(1/2)
syms eps
eq1=(eps == 1 - 1/(Ek/(2*c^2*m0) + 1)^(1/2))
solve(eq1,Ek)
% 2*c^2*m0*(1/(eps - 1)^2 - 1)
% 1/(eps - 1)^2 ~ 1+2*eps
Ek=4*c^2*m0*eps 
syms E0
Ek=4*eps*E0

% a) Electron E0=0.511 MeV = 511 keV
digits(3)
Ek1=vpa(subs(Ek,[eps E0],[0.01 511]))
% 20.4 keV

% b) Proton E0=938.2 MeV
Ek2=vpa(subs(Ek,[eps E0],[0.01 938.2]))
% 37.5 MeV