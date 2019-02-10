clear
syms C V V0 w t
UC=1/2*C*V^2
UC=subs(UC,V,V0*cos(w*t))
% (C*V0^2*cos(t*w)^2)/2
syms L I q0 
UL=1/2*L*I^2
UL=subs(UL,I,-q0*w*sin(w*t))
% (L*q0^2*w^2*sin(t*w)^2)/2
UL=subs(UL,q0,C*V0)
% (C^2*L*V0^2*w^2*sin(t*w)^2)/2
UL=subs(UL,w^2,1/(L*C))
% (C*V0^2*sin(t*w)^2)/2
U0=simplify(UC+UL)
% U0=(C*V0^2)/2 - initial energy of system