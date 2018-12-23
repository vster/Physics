% P=60 W
% V=120 V
clear
syms P V
I=P/V
R=V/I
% V^2/P
R=vpa(subs(R,[V P],[120 60]))
% 240.0 Om