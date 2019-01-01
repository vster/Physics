% rbb(w,T)=(hp*w^3)/(4*c^2*pi^2*(exp((hp*w)/(T*k)) - 1))   (1.39)
clear
syms w lam c T k hp real
rbb=(hp*w^3)/(sym(4)*c^2*sym(pi)^2*(exp((hp*w)/(T*k)) - 1))
w1=2*pi*c/lam
phi=(2*pi*c/lam^2)*subs(rbb,w,w1)
% (4*c^2*hp*pi^2)/(lam^5*(exp((2*pi*c*hp)/(T*k*lam)) - 1))
pretty(phi)

% z=(2*pi*c*hp)/(T*k*lam)
syms z A
phi=A*z^5/(exp(z)-1)
dphi=diff(phi,z)
% (5*A*z^4)/(exp(z) - 1) - (A*z^5*exp(z))/(exp(z) - 1)^2
pretty(dphi)
syms zm
eq1=5*(exp(zm)-1)-zm*exp(zm)
zmSol=solve(eq1,zm)
% lambertw(0, -5*exp(-5)) + 5
digits(4)
zm1=vpa(zmSol)
% 4.965
% lam=lamm
syms lamm_T  % =lamm*T
eq2=(2*pi*c*hp)/(k*lamm_T)-zm1
lam_T1=solve(eq2,lamm_T)
% (1.265*c*hp)/k
lamm_T1=vpa(subs(lam_T1,[k c hp],[1.38e-23 2.998e8 1.054e-34]))
% 0.002898 m*K = b
% lamm*T=b 
% We get Wien's displacement law.