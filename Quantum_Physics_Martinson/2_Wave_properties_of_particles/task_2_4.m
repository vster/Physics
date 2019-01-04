% d=0.335 nm
% T-?

% lamT=2*d=0.67 nm
clear
syms hp m k T
lamB=2*pi*hp/sqrt(3*m*k*T)                    % (2.12)
syms lamB
eq1=(lamB==2*pi*hp/sqrt(3*m*k*T))
TSol=solve(eq1,T)
% (4*hp^2*pi^2)/(3*k*lamB^2*m)
T=TSol
digits(3)
T1=vpa(subs(T,[hp k lamB m],[1.05e-34 1.38e-23 0.67e-9 1.675e-27]))
% 14.0 K