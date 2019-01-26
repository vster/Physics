% Polarization of light

% Circular polarization
% E1=E10*cos(w*t-k*x)
% E2=E20*cos(w*t-k*x)
% tan(alfa)=E10/E20

% E1=E10*cos(w*t)
% E2=E20*cos(w*t-pi/2)
clear
syms I0 alfa
I1=I0*cos(alfa)^2

I2=I1*cos(pi/2-alfa)^2
I2=simplify(I2)
% -(I0*(cos(4*alfa) - 1))/8
% I2=I0/4 is max at alfa=pi/4
