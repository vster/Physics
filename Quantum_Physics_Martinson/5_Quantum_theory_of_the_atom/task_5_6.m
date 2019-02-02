% I = 10 A
% R = 0.05 m
% z = 0.1 m
clear
syms mu0 I R z real
B(z)=mu0*I*R^2/(2*(R^2+z^2)^(3/2))
dBz=abs(diff(B,z))
% (3*R^2*abs(I*mu0*z))/(2*(R^2 + z^2)^(5/2))

% pMz=pMsz=+-muB
syms muB
F=muB*dBz
% (3*R^2*muB*abs(I*mu0*z))/(2*(R^2 + z^2)^(5/2))
digits(3)
F1=vpa(subs(F,[muB I mu0 z R],[0.927e-23 10 4*pi*1e-7 0.1 0.05]))
% 2.5e-27 N