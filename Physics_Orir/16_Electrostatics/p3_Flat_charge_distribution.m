% Qin=sigma*A0
% sigma - surface charge density
% int () E*dA = 2*E*A0

% According to the Gauss theorem
% int () W*dA = 4*pi*k0*sigma*A0

% 2*E*A0 = 4*pi*k0*sigma*A0
% E=2*pi*k0*sigma                     (16-8)
syms k0 sigma
E=2*pi*k0*sigma

% Two parallel plates

Ea=2*pi*k0*sigma
Eb=2*pi*k0*sigma

% In area I
E1=Ea-Eb
% 0
% In area II
E2=-Ea-Eb
% -4*pi*k0*sigma
% % In area III
E3=-Ea+Eb
% 0

% Conductor surface
% int_c()E*dA=E*Delta_A
% Qin=4*pi*k0*(sigma*Delta_A)
% E*Delta_A=4*pi*k0*(sigma*Delta_A)
% E=4*pi*k0*sigma

% Uniformly charged plate
% Qin=ro*x0*A0
% int_c()E*dA=E*Delta_A0
% E*A0=4*pi*k0*(ro*x0*A0)
% E=4*pi*k0*ro*x0                      (16-10)


