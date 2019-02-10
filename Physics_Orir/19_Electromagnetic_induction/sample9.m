% C = 10 mkF
% a) I - ?
% b) <P> - ? 
% c) P - ?

clear
digits(3)
% a)
% Irms=Vrms/XC
C = 10e-6
f = 60 % Hz
XC=1/(2*pi*f*C)
vpa(XC)
% 265.0
Vrms=120 % V
Irms=Vrms/XC
% 0.452 A

% b)
phi=-pi/2
Pm=Vrms*Irms*cos(phi)
% 0

% c)
syms I0 V0 phi w t
I(t)=I0*sin(w*t)
V(t)=V0*sin(w*t+phi)
P(t)=V(t)*I(t)
% I0*V0*sin(phi + t*w)*sin(t*w)
P(t)=simplify(subs(P(t),phi,-pi/2))
% -(I0*V0*sin(2*t*w))/2
Pmax=I0*V0/2
Pmax1=vpa(subs(Pmax,[I0 V0],[Irms*sqrt(2) 120*sqrt(2)]))
% 54.3 W
