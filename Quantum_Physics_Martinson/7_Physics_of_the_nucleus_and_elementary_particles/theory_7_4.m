% Elementary particles

% D_x*D_p >= hp/2

% E >= 1e-7/D_x
% E (eV), D_x (m)

clear
syms E
D_x=1e-7/E
D_x_1=vpa(subs(D_x,E,1e12))
% 1e-19 m

% Basic properties of elementary particles

% mp = 1.6726e-27 kg = 938.3 MeV
% me = 0.91e-30 kg = 0.511 MeV
% m(Z0-boson) = 93 GeV

% gamma + X -> X + e- + e+

% tau(e-) > 4.2e22 years
% tau(p) > 5e32 years
% tau(n) = 887+-2 s

% e- + e+ -> 2*gamma

% Quark model of hadrons

% p = uud
% n = udd
% pi+ = ud-
% pi- = u-d
% pi0 = 1/sqrt(2)*(uu- - dd-)

% Laws of conservation in the world of elementary particles

% 1. Law of energy conservation E
% 2. The law of conservation of pulse p
% 3. The law of conservation of momentum L
% 4. The law of conservation of electric charge Q
% 5. The law of conservation of three lepton charges Le, Lmu, Ltau
% 6. The law of conservation of baryon charge B
