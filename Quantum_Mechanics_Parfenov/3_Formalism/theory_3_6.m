% Impulse performance
% OpR=i*hp*d/dp
% |Psi(p)|^2 - is the probability density to detect that or
%   another impulse
clear
syms x p psi(x)
syms pi
psi(p)=1/(2*pi)^(3/2)*int(exp(-i*p*x)*psi(x),x)
syms psi(p)
psi(x)=1/(2*pi)^(3/2)*int(exp(-i*p*x)*psi(p),p)