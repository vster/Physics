% Diffraction on a separate slit
% a/2*sin(teta1)=lam/2
% sin(teta1)=lam/a - minimum intensity condition for a separate slot(22-11)
% Phi=k*a*sin(teta)

% sin(Phi/2)=(A/2)/R
% from where
% A=2*R*sin(Phi/2)               (22-12)
% R*Phi=A0
% from here
% R=A0/Phi
% Subst this to (22-12) then
syms A0 Phi
A=A0*sin(Phi/2)/(Phi/2)
I=A^2
% (4*A0^2*sin(Phi/2)^2)/Phi^2
syms I0
I=I0*(sin(Phi/2)/(Phi/2))^2                 % (22-13)
% where Phi=k*a*sin(teta)

% Consistent lows observed at
% Phi/2=n*pi 
% or
% k*a*sin(teta)/2=n*pi
% or
% sin(teta_min)=n*lam/a (n>=1)