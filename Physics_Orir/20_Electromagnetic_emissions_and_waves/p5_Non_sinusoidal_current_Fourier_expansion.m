% Non-sinusoidal current. Fourier expansion.
clear
syms w t real
syms n integer
F(t)=symsum(1/n*sin(n*w*t),n,1,inf)

syms J0 tau
J=J0*symsum(1/n*sin(n*w*t),n,1,inf)
% where w=2*pi/tau

% E=c*B
syms k0 c x
E=2*pi*k0/c*J0*symsum(1/n*sin(n*w*(t-x/c)))
% (2*J0*k0*pi*symsum(sin(n*w*(t - x/c))/n, x))/c

syms An phin
J=symsum(An*sin(n*w*t+phin))
% symsum(An*sin(phin + n*t*w), w)
% E=c*B
E=2*pi*k0/c*symsum(An*sin(n*w*(t-x/c)+phin),n,1,inf)