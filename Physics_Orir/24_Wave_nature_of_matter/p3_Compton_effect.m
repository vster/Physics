% Compton effect

% Photon momentum
% p=h/lam                         (24-2)

% p*c+m*c^2=p1*c+Ee1
% (p-p1+m*c)^2=(Ee1/c)^2           (24-3)
syms p p1 m c Ee1
eq1=(p-p1+m*c)^2-(Ee1/c)^2
eq1=expand(eq1)
% p^2 - Ee1^2/c^2 - 2*p*p1 + p1^2 + c^2*m^2 + 2*c*m*p - 2*c*m*p1

% Vectors of momentum
% p-p1=pe1
syms teta pe1
eq2=p^2-2*p*p1*cos(teta)+p1^2-pe1^2

eq3=simplify(eq1-eq2)
% pe1^2 - Ee1^2/c^2 - 2*p*p1 + c^2*m^2 + 2*p*p1*cos(teta) + 2*c*m*p - 2*c*m*p1
eq3= -m^2*c^2-2*p*p1 + c^2*m^2 + 2*p*p1*cos(teta) + 2*c*m*p - 2*c*m*p1
eq3=simplify(eq3)
% 2*p*p1*cos(teta) - 2*p*p1 + 2*c*m*p - 2*c*m*p1
p1sol=solve(eq3,p1)
% (c*m*p)/(p + c*m - p*cos(teta))
% p1=h/lam1 => 
lam1=h/p1
lam1=subs(lam1,p1,p1sol)
% (h*(p + c*m - p*cos(teta)))/(c*m*p)
lam1=expand(lam1)
% h/p + h/(c*m) - (h*cos(teta))/(c*m)
% lam1=lam+h/(m*c)*(1-cos(teta))
delta_lam=h/(m*c)*(1-cos(teta))
% lam1-lam=(h*(1-cos(teta)))/(c*m)              (24-4)