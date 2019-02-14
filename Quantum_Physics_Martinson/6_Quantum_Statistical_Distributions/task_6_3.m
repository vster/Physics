% <nf>=1/(exp(hp*w/(k*T))-1)                (6-43)
syms hp w dw k T
nfm=1/(exp(hp*w/(k*T))-1) 
% gf(E)=(E^2*V)/(c^3*hp^3*pi^2)                          (6.30)
syms E dE V c 
syms pi
g(E)=(E^2*V)/(c^3*hp^3*pi^2)
% <nf>g(E)E*dE
% Interval from w=E/hp to w+dw=E/hp+dE/hp
% u(w,T)*V*dw=<nf>*g(E)*E*dE
eq1=simplify(nfm*g(E)*E*dE)
% (E^3*V*dE)/(c^3*hp^3*pi^2*(exp((hp*w)/(T*k)) - 1))
eq2=subs(eq1,[E dE],[hp*w hp*dw])
% (V*dw*hp*w^3)/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))
u(w,T)=eq2/(V*dw)
% (hp*w^3)/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))