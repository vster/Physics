% Vin = 100 mkV
% L = 1.26 mkH
% R = 20 Ohm
% C = 0.567 pF = 0.567e-12 F
% a) f0 = 188 MHz
%    VC, IC -?
% b) Vout(f) - ?
% c) D_f = 6 MHz
%    kpod - ?
clear
digits(4)
% a)
% On Resonance frequancy
% Z=sqrt(R^2)=R = 20 Ohm
R=20
Z=R
Vin=100e-6
I0=Vin/Z
%    5.0000e-06 A = 5 mkA
w=2*pi*188e6
C=0.567e-12
VC0a=I0*(1/(w*C))
%   0.0075 V = 7.5 mV
VC0a/Vin
% 74.6 times

% b)
% VC0=I0*XC=
syms V0 R w L C
VC0=(V0/sqrt(R^2+(w*L-1/(w*L))^2))*1/(w*C)
syms f f0 
VC0=V0/sqrt((2*pi*f*R*C)^2+(f^2/f0^2-1)^2)
% f0=1/(2*pi*sqrt(L*C))
% f01=vpa(subs(f0,[L C],[1.26e-6 0.567e-12]))
% 1.883e8 Hz = 188 MHz
VC01(f)=vpa(subs(VC0,[V0 R C f0],[100e-6 20 0.567e-12 188e6]))
% 0.0001/((2.829e-17*f^2 - 1.0)^2 + 5.077e-21*f^2)^(1/2)
% fplot(VC01,[100e6 250e6])
x=(100:0.1:250)*1e6;
y=VC01(x);
plot(x,y)
grid on

% c)
f2=194e6 % Hz
VC0c=VC01(f2)
% 0.001508 V = 1.5 mV
VC0a/VC0c
% 4.95 - adjacent channel suppression factor