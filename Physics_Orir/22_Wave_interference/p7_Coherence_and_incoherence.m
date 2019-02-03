% Coherence and incoherence

% D_t0=D_L0/c
% where
% D_L0 - coherence length
% D_t0 - coherence time

% 2*pi*D_f*D_t0=1
% D_f - spectrometer line width

% D_t0=1/(2*pi*D_f)
% D_L0=c*D_t0=c/(2*pi*D_f)

% Intensity Measurement
clear
syms I0 phi phi0
I1(phi)=2*I0*(1+cos(phi))
I2(phi)=2*I0*(1+cos(phi+phi0))
% phi0=k*d*sin(teta)
I1I2=int(I1*I2,phi,0,2*pi)/int(1,phi,0,2*pi)
% 2*I0^2*(cos(phi0) + 2)                
% I1I2=2*I0^2*(2 + cos(k*d*sin(teta)))          (22-14)