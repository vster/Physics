syms k0 p x0 x
E1=k0*p/(x+x0)^3
E2=k0*p/x^3
E=k0*p*(1/x^3-1/(x+x0)^3)
% E=k0*p/x^3*(1-1/(1+x0/x)^3)
% E~k0*p/x^3*(1-(1-3*x0/x))
% E=3*k0*p*x0/x^4