% Hypothesis de Broglie

% Wave properties of particles. Corpuscular-wave dualism.
% E=hp*w, pf=k*hp=2*pi*hp/lam
clear
syms E hp p
w=E/hp                            % (2.1)
lamB=(2*pi*hp)/p                   % (2.2)
syms A w t k x
ksi(x,t)=A*exp(-i*(w*t-k*x))
% where
% A - amplitude of wave
% k=2*pi/k - wave number
syms A hp E t p x
Psi(x,t)=A*exp(-i/hp*(E*t-p*x))             % (2.3)
% This is de Broglie wave
% E=hp*w, p=hp*k                              (2.4)

% Properties of de Broglie waves
% From (2.3) E*t-p*x=const
% Phase velocity
% vp=dx/dt=E/p
vp=E/p
syms m v c
vp=subs(vp,[E p],[m*c^2 m*v])
% vp=c^2/v                                  (2.5)

% vg=dw/dk
% vg=d(hp*w)/d(hp*k)=dE/dp
% As v<c, then vp>c - correct.
% E^2=p^2*c^2+m0^2*c^4
% 2*E*dE=2*p*c^2*dp
% dE/dp=p*c^2/E
% vg=p*c^2/E=p*c^2/m*c^2=p/m=v
% So the group velocity of a de Broglie wave 
% is equal to the velocity of a particle.

% Calculation of the de Broglie wavelength 
% for non-relativistic and relativistic particles
% If v<<c
% Ek=m0*v^2/2=p^2/(2*m0) => 
syms m0 Ek hp p
% From (2.2)
lamB=2*pi*hp/p
% p=sqrt(2*m0*Ek)
lamB=subs(lamB,p,sqrt(2*m0*Ek))
% lamB=(pi*2^(1/2)*hp)/(Ek*m0)^(1/2)        (2.6)

% E^2=p^2*c^2+m0^2*c^4
% p=1/c*sqrt(Ek*(Ek+2*m0*c^2))=sqrt(2*m0*Ek)*sqrt(1+Ek/(2*m0*c^2))

lamB=2*pi*hp/p
lamB1=subs(lamB,p,sqrt(2*m0*Ek)*sqrt(1+Ek/(2*m0*c^2)))
% (2^(1/2)*hp*pi)/((Ek*m0)^(1/2)*(Ek/(2*c^2*m0) + 1)^(1/2))
pretty(lamB1)
syms lamB
lamB1=lamB/(Ek/(2*c^2*m0) + 1)^(1/2)           % (2.7)
pretty(lamB1)

% De Broglie wavelength of micro and macro objects
% lamB=2*pi*hp/sqrt(2*m0*Ek)=2*pi*hp/sqrt(2*m0*e*U)   (2.8)
syms hp m0 e U
lamB=2*pi*hp/sqrt(2*m0*e*U)
digits(3)
lamBv=vpa(subs(lamB,[hp m0 e],[1.05e-34 9.1e-31 1.6e-19]))
lamBv=simplify(lamBv)
% 1.22e-9/U^(1/2) m

lamB=2*pi*hp/(m*v)
lamBv=vpa(subs(lamB,[hp m v],[1.05e-34 1e-9 1e-3]))
% 6.6e-22 m

% Refraction of electron waves in metal.
% phi0 - internal metal potential
% Av=e*phi0 - output work
% ne=vpv/vpm
% use (2.5) vp=c^2/v then
% ne=vm/vv
% vm - velocity of electron in metall
% vv - velocity of electron in vacuum
% vv=sqrt(2*Ek/m0), vm=sqrt(2*(Ek+Av)/m0)
% ne=sqrt((Ek+Av)/Ek))=sqrt(1+Av/Ek)
% ne=sqrt(1+phi0/U)                          (2.9)
% if U~phi0 then ne>1
% if U>>phi0 then ne~1
