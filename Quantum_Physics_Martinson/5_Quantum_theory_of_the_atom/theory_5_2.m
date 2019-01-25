% Theory Bohr hydrogen atom

% L=n*hp, n=1,2,...                          (5.3)
% h*wnk=Ek-En, k>n                           (5.4)

% Atomic energy quantization
clear
syms m0 v r eps0 e n hp
eq1=m0*v^2/r==1/(4*pi*eps0)*e^2/r^2            % (5.5)
eq2=m0*v*r==n*hp
[rn v]=solve([eq1,eq2],[r v])
% rn=(4*pi*eps0*hp^2*n^2)/(e^2*m0)               (5.6)
% vn=e^2/(4*eps0*hp*n*pi)
a1=(4*pi*eps0*hp^2)/(e^2*m0)                    % (5.7)
digits(3)
a2=vpa(subs(a1,[eps0 hp e m0],[8.85e-12 1.05e-34 1.6e-19 9.1e-31]))
% 5.26e-11 m

syms a n
rn=a*n^2                                       % (5.8)

rn=(4*pi*eps0*hp^2*n^2)/(e^2*m0) 
vn=e^2/(4*eps0*hp*n*pi)                        % (5.9)
vn1=vpa(subs(vn,[e eps0 hp n],[1.6e-19 8.85e-12 1.05e-34 1]))
% 2.19e6 m/s

T1=2*pi*rn/vn
% (32*eps0^2*hp^3*n^3*pi^3)/(e^4*m0)
T1=vpa(subs(T1,[eps0 hp n e m0],[8.85e-12 1.05e-34 1 1.6e-19 9.1e-31]))
% 1.51e-16 s

Ek=m0*vn^2/2
% Ek=(e^4*m0)/(32*eps0^2*hp^2*n^2*pi^2)          (5.10)

U=-e^2/(4*pi*eps0*rn)
% -(e^4*m0)/(16*eps0^2*hp^2*n^2*pi^2)            (5.11)

E=Ek+U
% E=-(e^4*m0)/(32*eps0^2*hp^2*n^2*pi^2)          (5.12)
E0=vpa(subs(E,[e m0 eps0 hp n],[1.6e-19 9.1e-31 8.85e-12 1.05e-34 1]))/1.6e-19
% -13.6 eV
E=-13/6/n^2

% Ei=|E1|=13.6 eV                                (5.13)

syms R n k
wnk=R*(1/n^2-1/k^2)                           %  (5.14)
R=(e^4*m0)/(32*eps0^2*hp^3*pi^2)              %  (5.15)
R=vpa(subs(R,[e m0 eps0 hp],[1.6e-19 9.1e-31 8.85e-12 1.05e-34]))
% 2.08e16 1/s