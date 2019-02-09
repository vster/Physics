% Magneticfield energy

% Oscillatory LC-contour
% Vab=q/C
% Vcd=-L*dI/dt
% q/C=-L*dI/dt
% subst dq/dt to I
% d2q/dt2=-(1/(L*C))*q
% q=q0*cos(w*t)
% where
% w=1/sqrt(L*C)
syms q0 w t
q=q0*cos(w*t)
% V=q/C=(q0/C)*cos(w*t)=V0*cos(w*t)
% f=1/(2*pi*sqrt(L*C))
I=diff(q,t)
% I=-q0*w*sin(t*w)