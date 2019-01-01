% Hypothesis of quanta. Planck's formula.
% E=h*nu or  E=hp*w                    (1.31)
% <eps>=sum(n=0:inf)P(n)*eps(n)        (1.32)
% where 
% eps(n)=n*hp*w is possible value of radiation energy
% P(n) - the probability that the radiation will have energy eps(n)

% P(n)=A*exp(-eps(n)/(k*T))            (1.33)
syms n k T eps(n) A
P(n)=A*exp(-eps(n)/(k*T))
% sum(n=0:inf)P(n)=1 => 
% A=(sum(n=0:inf)exp(-eps(n)/(k*T)))^(-1)
A=symsum(exp(-eps(n)/(k*T)),n,0,inf)^(-1)
% 1/symsum(exp(-eps(n)/(T*k)), n, 0, Inf)
pretty(A)

% <eps>=sum(n=0:inf)n*hp*w*exp(-n*hp*w/(k*t))    (1.34)
%       /sum(n=0:inf)exp(-n*hp*w/k*T)
syms n hp w k T real
assume(n*w*w/k*T>0)
eps_m=symsum(n*hp*w*exp(-n*w*w/k*T),n,0,inf)/...
       symsum(exp(-n*hp*w/(k*T)),n,0,inf)

% ksi=hp*w/(k*T)
syms ksi real
assume(ksi>0)
eps_m=hp*w*symsum(n*exp(-n*ksi),n,0,inf)/symsum(exp(-n*ksi),n,0,inf)
eps_m=simplify(eps_m)
% (hp*w)/(exp(ksi) - 1)
eps_m=subs(eps_m,ksi,hp*w/(k*T))
% eps_m=(hp*w)/(exp((hp*w)/(T*k)) - 1)           (1.37)
pretty(eps_m)

% If hp*w/(k*T)<<1  => exp(hw/(k*T))~1+hw/(k*T)
% then we get classic formula
% esp_m=k*T
% Subst (1.37) to (1.27)
u(w,T)=w^2*eps_m/(sym(pi)^2*c^3) 
% u(w,T)=(hp*w^3)/(c^3*pi^2*(exp((hp*w)/(T*k)) - 1))  (1.38)
pretty(u(w,T))

% Use (1.17)  we get Planck function
rbb(w,T)=c/4*u(w,T)
% rbb(w,T)=(hp*w^3)/(4*c^2*pi^2*(exp((hp*w)/(T*k)) - 1))   (1.39)
pretty(rbb(w,T))

% At large frequencies if hp*w>>k*T => exp(hp*w/(k*T))>>1
% then (1.39) goto
f(w,T)=hp*w^3/(sym(4)*sym(pi)^2*c^2)*exp(-(hp*w)/(k*T))
% f(w,T)=(hp*w^3*exp(-(hp*w)/(T*k)))/(4*c^2*pi^2)         (1.40)
pretty(f(w,T))