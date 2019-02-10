clear
% C = 1 mkF = 1e-6 F
C=1e-6
% V0 = 100 V
V0=100
% a) 60 Hz
% b) 1 kHz
% c) 1 MHz
digits(4)

% a)
w=2*pi*60
% 377
XC=1/(w*C)
% 2.6526e+03 Ohm
I0=V0/XC
% 0.0377 A = 37.7 mA

% b)
w=2*pi*1e3
% 6.2832e+03
XC=1/(w*C)
% 159 Ohm
I0=V0/XC
% 0.6283 A = 628 mA

% b)
w=2*pi*1e6
% 6.2832e+06
XC=1/(w*C)
% 0.1592 Ohm
I0=V0/XC
% 628 A