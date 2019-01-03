% Laws of heat radiation

% Characteristics of thermal radiation

% Integral emissivity or energy luminosity
% R=int(0:inf)r(w,T)dw                            (1.1)
% r(w,T) - J/m^2
% R - W/m^2

clear
syms w T
syms r(w,T)
R=int(r(w,T),w,0,inf)

% r(w,T)dw=r(lam,T)d_lam                        (1.2)
% r(lam,T)=r(w,T)dw/d_lam=r(w,T)*2*pi*c/lam^2

syms rwT rlamT c lam w
rlamT=rwT*2*pi*c/lam^2

syms J m s
rlamT_si=subs(rlamT,[rwT c lam],[J/m^2 m/s m])
% (2*pi*J)/(m^3*s) ~ J/(m^3*s)

% Spectral absorption of the body
% a(w,T)=dPhi1(w)/dPhi(w)

% Kirchhoff's Law
% (r(w,T)/a(w,T))1=(r(w,T)/a(w,T))2=...=rbb(w,T)/1=f(w,T)    (1.5)

% Stefan-Boltzmann law
% The energy luminosity of an absolutely black body
% Rbb=sigma*T^4                             (1.7)
% sigma is Stefan-Boltzmann constant, W/(m^2*K^4)
% Energy luminosity of real bodies
% R=A(T)*Rbb=A(T)*sigma*T^4                 (1.8)
syms sigma A(T)
R=A(T)*sigma*T^4
% A(T)<1 is integral body absorption

syms W m K
R_si=subs(R,[A(T) sigma T],[1 W/(m^2*K^4) K])
% W/m^2

% Wien's displacement law
% rbb(w,T)=w^3*f(w/T)                       (1.9)
syms lam b c f(x)
rbb(w,T)=w^3*f(w/T)
% rbb(lam,T)=((2*pi*c)^4/lam^5)*f(2*pi*c/(lam*T))      (1.10)
rbb(lam,T)=((2*pi*c)^4/lam^5)*f(2*pi*c/(lam*T))
pretty(rbb(lam,T))
% lam_m=b/T                                 (1.11)
lam_m=b/T
% b=2.898e-3 m*K

syms m K
lam_m_si=subs(lam_m,[b T],[m*K K])
% m