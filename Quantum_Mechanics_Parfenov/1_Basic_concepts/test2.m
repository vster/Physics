syms x 
f(x)=sin(x)
f1=int(f(x)*dirac(x-pi/2),x,-inf,inf)
% 1
f2=int(exp(x)*dirac(x-1),x,-inf,inf)
% exp(1)