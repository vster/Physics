% Diffraction on a round hole
% E=int()cos(k*r(teta))*dA
syms x
% J(x)=besselj(1,x)
J1(x)=sqrt(2/(pi*x))*sin(x-pi/4)

% I=I0*(J1(Phi/2)/Phi/4)^2                         (23-4)
% where Phi=k*a*sin(teta)

% First min at J1(x)=0, when x=3.84
% Phi_min/2=3.84
% or
% 1/2*k*a*sin(teta_min)=3.84
% sin(teta_min)=1.22*lam/a                         (23-5)

