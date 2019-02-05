% Zeeman effect

% W=-PM*B=-PMz*B                          (5.58)
% D_EJ=PMJz*B=g*muB*mJ*B                  (5.59)
% D_E=g*muB*B=g*D_E0                      (5.60)
% where
% D_E0=muB*B called normal energy level splitting.

% When such atoms are introduced into a magnetic field, 
% the original spectral line with a frequency w0 
% splits into three lines with frequencies
% w1=w0-D_w0, w0, w2=w0+D_w0
% where
% D_w0=D_E0/hp=muB*B/hp                   (5.61)
% called normal displacement
clear
syms muB hp B
D_w0=muB*B/hp
digits(2)
D_w0_1=vpa(subs(D_w0,[muB B hp],[9.27e-24 1 1.05e-34]))
% 8.8e10 Hz
% D_lam0=0.02 nm

% D_E2=g2*muB*B=g2*D_E0
% E"=E2+g2*muB*m2J*B=E2*m2J*D_E0          (5.62)
% D_E1=g1*muB*B=g1*D_E0
% E'=E1+g1*m1J*D_E0                       (5.63)

% w=(E"-E')/hp=(E2-E1)/hp+(g2*m2J-g1*m1J)*D_E0/hp      (5.64)
% with transfers to
% D_w=w-w0=(4/3*m2J-2m1J)*D_w0            (5.65)
% here
% D_w0=D_E0/hp=muB*B/hp

% D_w=D_w0*[+-1/3,+-1,+-5/3]              (5.66)

% Electron paramagnetic resonance
% wrez=g*muB*B/hp                         (5.67)

