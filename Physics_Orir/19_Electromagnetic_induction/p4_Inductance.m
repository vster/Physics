% Inductance

% Transformers
% V2=-n2*dPhiB/t
% V1=-n1*dPhiB/dt
% then
% V2/V1=n2/n1

% Self-induction
% EMF_coil=-dPhi/dt
% EMF=-N*(dPhi/dt)
% N*Phi=L*I
% from here
% L=N*Phi/I  (inductance determination)  (19-5)
% N*dPhi/dt=L*dI/dt
% hence
% EMF=-L*dI/dt  (EMF of self-induction)  (19-6)
% V*s/A ~ Ohm*s ~ H (Henry)
clear
syms N Phi1 I
% From (19-5)
L=N*Phi1/I
syms B A k0 c x0
Phi11=B*A
B1=(4*pi*k0/c^2)*(N*I/x0)
Phi11=subs(Phi11,B,B1)
% (4*pi*A*I*N*k0)/(c^2*x0)
L=subs(L,Phi1,Phi11)
% (4*pi*A*N^2*k0)/(c^2*x0)   (solenoid inductance)   (19-7)

syms m N C s
L_si=subs(L,[A N k0 c x0],[m^2 1 N*m^2/C^2 m/s m])
% (4*pi*N*m*s^2)/C^2~N*m*s^2/C^2~kg*m/s^2*m/s^2/C^2~kg*m^2/C^2~H
