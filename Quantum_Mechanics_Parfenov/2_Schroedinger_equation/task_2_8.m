syms x
p = (1-sqrt(E/U0))^4
digits(3)
p=vpa(subs(p,[E U0],[0.1 10]))
% 0.656
