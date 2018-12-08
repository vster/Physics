% K=m*v^2/2
% U=-k0*e^2/R^2
% F=k0*e^2/R^2=m*v^2/R
% K=m*v^2/2=k0*e^2/(2*R)
% U/K=-k0*e^2/R*(2*R/(k0*e^2))=-2
% E=K+U=(-U/2)+U=U/2
% E=-k0*e^2/(2*R^2)
syms k0 e r R
assume(R>0)
F=k0*e^2/r^2
A=int(F,r,R,inf)
% (e^2*k0)/R
