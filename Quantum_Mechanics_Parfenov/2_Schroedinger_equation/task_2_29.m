
syms n hp m a V0
E=n^2*pi^2*hp^2/(2*m*(2*a)^2)-V0
E1=subs(E,[n a],[1 1e-11])
% 
E2=subs(E,[n a],[2 1e-11])
% 
E3=subs(E,[n a],[3 1e-11])
% 
EH=(pi*hp*1e5)^2/(2*m)
