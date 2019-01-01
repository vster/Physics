% rbb(w,T)=(hp*w^3)/(4*c^2*pi^2*(exp((hp*w)/(T*k)) - 1))   (1.39)
clear
syms w dw c T k hp real
rbb=(hp*w^3)/(sym(4)*c^2*sym(pi)^2*(exp((hp*w)/(T*k)) - 1))
drbb=rbb*dw
syms x dx
% hp*w/(k*T)=x => w=k*T*x/hp
drbb=subs(drbb,[w dw],[k*T*x/hp k*T*dx/hp])
% (T^4*dx*k^4*x^3)/(4*c^2*hp^3*pi^2*(exp(x) - 1))
pretty(drbb)
% Rbb=sigma*T4
dsigma=drbb/(dx*T^4)
% (k^4*x^3)/(4*c^2*hp^3*pi^2*(exp(x) - 1))
pretty(dsigma)
sigma=int(dsigma,x,0,inf)
% sigma=(k^4*pi^2)/(60*c^2*hp^3)
pretty(sigma)
digits(3)
sigma1=vpa(subs(sigma,[k c hp],[1.38e-23 2.998e8 1.054e-34]))
% 5.67e-8 W/(m^2*K^4)