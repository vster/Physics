% sigma=5.9e7 (Ohm*m)^(-1)
% u=1.3e6 m/s
% L -?

% sigma=(L*e^2*n)/(2*m*u)           (17-5)
clear
syms m u sigma e n
n1=8.42e28 % m-3
L=2*m*u*sigma/(e^2*n)
digits(3)
L1=vpa(subs(L,[m u sigma e n],[9.1e-31 1.3e6 5.9e7 1.6e-19 n1]))
% 6.48e-8 m