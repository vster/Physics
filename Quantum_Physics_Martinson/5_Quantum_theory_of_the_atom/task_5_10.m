% lam = 694 nm
% l = 10 cm
% r = 0.95
% n = 1.5

clear
% D_w/w=1/Q
syms W D_W
Q=2*pi*W/D_W
% tau=2*l*n/c
% D_Wtau=W-r^2*W=(1-r^2)*W
syms D_Wtau T tau r l n c nu
D_W1=D_Wtau*T/tau
D_W1=subs(D_W1,[D_Wtau T tau],[(1-r^2)*W 1/nu 2*l*n/c])
% -(W*c*(r^2 - 1))/(2*l*n*nu)
Q=subs(Q,D_W,D_W1)
% -(4*pi*l*n*nu)/(c*(r^2 - 1))
syms lam
Q=subs(Q,nu,c/lam)
% -(4*pi*l*n)/(lam*(r^2 - 1))
digits(2)
Q1=vpa(subs(Q,[l n lam r],[0.1 1.5 694e-9 0.95]))
% 2.8e7
% D_w/w=1/Q=
1/Q1
% 3.6e-8

