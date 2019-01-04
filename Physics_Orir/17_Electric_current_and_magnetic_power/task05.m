% Rin=0.05 Om
% E=12 V
% Rp=0.1 Om

% a)
clear
syms E Rp Rin
I=E/(Rp+Rin)
I1=vpa(subs(I,[E Rp Rin],[12 0.1 0.05]))
% 80 A

% b)
syms I Rp
P=I^2*Rp
P=vpa(subs(P,[I Rp],[I1 0.1]))
% 640 W > 100 W
