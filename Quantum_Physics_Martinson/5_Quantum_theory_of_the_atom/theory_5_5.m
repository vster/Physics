% Stern-Gerlach experience. 
% The electron spin hypothesis.

% Stern-Gerlach experience. 
% A force is acting on the atoms flying in the gap of the magnet.
% Fz=pMz*dB/dz                                  (5.43)

% The electron spin. 
% s=1/2

% The values of the intrinsic mechanical and magnetic moments 
% of the electron are determined by the formulas
% Ls=hp*sqrt(s*(s+1))=sqrt(3)/2*hp              (5.44)
% pMs=2*muB*sqrt(s*(s+1))=sqrt(3)*muB           (5.45)
% For such moments, the gyromagnetic ratio
% Gs=pMs/Ls=2*muB/hp=e/m0                       (5.46)
% Spin quantum number
% ms=+-s=+-1/2
% Wherein
% Lsz=ms*hp=+-hp/2                              (5.47)
% pMsz=2*ms*muB=+-muB                           (5.48)

% The quantum state of an electron in an atom 
% should be determined by a set of four quantum numbers.
% Main       n   1,2,3...
% Orbital    l   0,1,2,3...(n-1)
% Magnetic   m   -l,...-1,0,1,...+l
% Spin       ms  -1/2,+1/2

% Each value of the main quantum number corresponds to 
% 2*sum(l=0:n-1)(2*l+1)=2*n^2                   (5.49)
% combinations of quantum numbers

% Resulting moment
% Lj=hp(j*(j+1))                                (5.50)
% where
% j=l+s and j=|l-s|
% As s=1/2 then
% j=l+1/2 and j=|l-1/2|

% Selection rule
% delta_j=0, +-1

% The distance between the energy levels causing 
% the fine structure of the hydrogen spectrum
% D_E=(alfa^2/16)*Ei
% where
% Ei - Hydrogen ionization energy
% alfa=e^2/(4*pi*eps0*hp*c) ~ 1/137 - fine structure constant
clear
syms e eps0 hp c
alfa=e^2/(4*pi*eps0*hp*c)
digits(4)
alfa1=vpa(subs(alfa,[e eps0 hp c],[1.6e-19 8.854e-12 1.05e-34 3e8]))
% 0.007304
1/alfa1
% 137 => alfa=1/137
