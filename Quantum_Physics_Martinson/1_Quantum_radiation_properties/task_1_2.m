% lam_m=0.48e-6  % m
% Pel=10e3         % W
% eta=0.2
% b=2.9e-3
clear
digits(3)
syms b lam_m
T=b/lam_m
T1=vpa(subs(T,[b lam_m],[2.9e-3 0.48e-6]))
% 6044.0 K

% W=R*4*pi*Rs^2=4*pi*sigma*T^4*Rs^2
% C=W/(4*pi*Rse^2)=sigma*T^4*(Rs/Rse)^2
syms sigma T Rs Rse
C=sigma*T^4*(Rs/Rse)^2
C1=vpa(subs(C,[sigma T Rs Rse],[5.67e-8 T1 6.95e8 1.49e11]))
% 1644.0 W = 1.6 kW

% Pel=eta*C*S => S=Pel/(eta*C)
syms Pel eta C
S=Pel/(eta*C)
S1=vpa(subs(S,[Pel eta C],[1e4 0.2 C1]))
% 30.4 m^2
