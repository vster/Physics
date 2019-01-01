% Laws of heat radiation

% Characteristics of thermal radiation

% Integral emissivity or energy luminosity
% R=int(0:inf)r(w,T)dw                            (1.1)
clear
syms w T
syms r(w,T)
R=int(r(w,T),w,0,inf)

% r(w,T)dw=r(lam,T)d_lam                        (1.2)
% r(lam,T)=r(w,T)dw/d_lam=r(w,T)*2*pi*c/lam^2

% Spectral absorption of the body
% a(w,T)=dPhi1(w)/dPhi(w)

% Kirchhoff's Law
% (r(w,T)/a(w,T))1=(r(w,T)/a(w,T))2=...=rbb(w,T)/1=f(w,T)    (1.5)

% Stefan-Boltzmann law
% The energy luminosity of an absolutely black body
% Rbb=sigma*T^4                             (1.7)
% sigma is Stefan-Boltzmann constant
% Energy luminosity of real bodies
% R=A(T)*Rbb=A(T)*sigma*T^4                 (1.8)
syms sigma A(T)
R=A(T)*sigma*T^4
% A(T)<1 is integral body absorption

% Wien's displacement law
% rbb(w,T)=w^3*f(w/T)                       (1.9)
syms lam b c f(x)
rbb(w,T)=w^3*f(w/T)
% rbb(lam,T)=((2*pi*c)^4/lam^5)*f(2*pi*c/(lam*T))      (1.10)
rbb(lam,T)=((2*pi*c)^4/lam^5)*f(2*pi*c/(lam*T))
pretty(rbb(lam,T))
% lam_m=b/T                                 (1.11)
lam_m=b/T