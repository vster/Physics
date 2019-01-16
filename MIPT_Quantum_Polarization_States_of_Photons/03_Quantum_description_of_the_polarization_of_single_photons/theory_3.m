clear
format short
syms E1 E2 k z w t phi1 phi2
E=[E1*cos(k*z-w*t+phi1);E2*cos(k*z-w*t+phi2);0]

% Jones vector
ket_phi=1/sqrt(E1^2+E2^2)*[E1*exp(i*(k*z-w*t+phi1));...
                           E2*exp(i*(k*z-w*t+phi2))]        % (4)

ket_phi=1/sqrt(E1^2+E2^2)*[E1*exp(i*phi1);E2*exp(i*phi2)]
ket_phi=1/sqrt(E1^2+E2^2)*[E1;E2*exp(i*(phi2-phi1))]        % (5)


ket_H=[1;0]
ket_V=[0;1]
syms c1 c2
ket_phi=c1*ket_H+c2*ket_V                                   % (6)
% c1
% c2
% Where |c1|^2+|c2|^2=1
% If phi1=phi2 or phi2-phi1=+-pi, then dealing with linear polarization
% |phi>=3/5*|H>+4/5*|V> - linear polarization
% |phi>=3/5*|H>+4/5*exp(i*pi/2)*|V> - right elliptical polarization
% |phi>=3/5*|H>+4/5*exp(i*5*pi/4)*|V> - left elliptical polarization
% If phi2-phi1 in (0,pi) - right elliptical polarization
% If phi2-phi1 in (pi,2*pi) - left elliptical polarization
% If |c1|=|c2| and phi2-phi1=pi/2 - right circular polarization
ket_rcp=1/sqrt(2)*(ket_H+i*ket_V)
% If |c1|=|c2| and phi2-phi1=3*pi/2 - left circular polarization
ket_lcp=1/sqrt(2)*(ket_H-i*ket_v)

% if ket_rcp+ket_lcp, then we will get photons with liner polarization

% If it turns out that |c1|^2+|c2|^2~=1, then will need to be replaced
% c1->c1/sqrt(|c1|^2+|c2|^2) and
% c2->c2/sqrt(|c1|^2+|c2|^2)
% sum |c1|^2+|c2|^2 makes sense the number of photons and must be 1,
% if we know that we have one photon.

% If the photon is absorbed and we don't absobed or not then
% |c1|^2+|c2|^2 may be < 1 and 
% probability of absorption is 1-(|c1|^2+|c2|^2)


