clear
syms sigma r dr R L Q real
assume(r>0)
assume(R>0)
assume(L>0)
dq=2*pi*r*sigma*dr
% 2*pi*dr*r*sigma
syms k0 x0
assume(x0>0)
dE=k0*x0*dq/(x0^2+r^2)^(3/2)
% (2*pi*dr*k0*r*sigma*x0)/(r^2 + x0^2)^(3/2)
E=int(dE/dr,r,0,R)
% -2*k0*sigma*pi*(x0/(R^2 + x0^2)^(1/2) - 1)
pretty(E)
E1=-2*k0*sigma*pi*(x0/(R^2 + x0^2)^(1/2) - 1)
E2=subs(E1,x0,x0+L)
% -2*k0*sigma*pi*((L + x0)/((L + x0)^2 + R^2)^(1/2) - 1)

syms x dx real
dq=2*pi*R*sigma*dx
dE=k0*x*dq/(x^2+R^2)^(3/2)
E3=int(dE/dx,x,x0,x0+L)
% 2*R*k0*sigma*pi*(1/(R^2 + x0^2)^(1/2) - 1/((L + x0)^2 + R^2)^(1/2))
E=simplify(E1+E2+E3)

sigma1=Q/(2*pi*R*(R+L))
E=subs(E,sigma,sigma1)
E=simplify(E)
