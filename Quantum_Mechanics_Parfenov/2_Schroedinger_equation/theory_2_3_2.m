% Barrier of finite length.

% The transmittance of the flow of particles passing through 
% a rectangular barrier is calculated by the formulaa
% T=(4*k^2*kn^2/((k^2-kn^2)^2*sin(a*kn)^2+4*k^@*kn^2)       (2.14)
% T=(1+U0^2*sin(a*kn)^2/(4*E*(E-U0))
% where
% where k and kn are wave numbers corresponding 
% to the position of the particle outside the barrier and inside it, 
% E is the particle energy, 
% U0 is the barrier height, 
% a is the barrier length.
clear
syms k kn a E U0 hp m
T=(4*k^2*kn^2)/((k^2-kn^2)^2*sin(a*kn)^2+4*k^2*kn^2)
pretty(T)
T1=(1+U0^2*sin(a*kn)^2/(4*E*(E-U0)))^(-1)
pretty(T1)

% At E<U0 the coefficient k becomes an imaginary quantity
% and the transmission expression is obtained by replacing k = ik', 
% where the real positive number
% k'=sqrt(2*m*(U0-E))/hp

% From (2.14) we can see, that 
% T=1 if sin(a*kn)=0, at a*kn=pi*n
% what do the values correspond to energy
% E=(pi^2*hp*n^2)/(2*m*a^2)+U0, n=1,2,3...
syms n integer
syms pi
E1=(pi^2*hp*n^2)/(sym(2)*m*a^2)+U0
pretty(E1)

% If the particle energy is much less than the height 
% of the barrier, and the barriers are much larger than 
% the de Broglie particle wavelength, then an approximate 
% formula is possible
% T~16*(E/U0)*(1-E/U0)*exp(-2*a*sqrt(2*m*(U0-E))/hp)    (2.15)

T=16*(E/U0)*(1-E/U0)*exp(-2*a*sqrt(2*m*(U0-E))/hp)
pretty(T)
