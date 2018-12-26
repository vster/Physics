syms x
R = (1-sqrt(E/U0))^2
digits(3)
R=vpa(subs(p,[E U0],[0.1 10]))
% 0.81 -?    
