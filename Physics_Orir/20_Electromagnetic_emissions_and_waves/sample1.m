% int_c()B*ds=4*pi*(k0/c^2)*int()j*dA+(1/c^2)*int()(dE/dt)*dA   (20-2)
clear
syms B R c r t E(t)
eq1=B*(2*pi*r)==0+1/c^2*diff(E,t)*(pi*r^2)
B=solve(eq1,B)
% (r*diff(E(t), t))/(2*c^2)
% diff(E,t)=(4*pi*k0/AC)*I
syms k0 AC I
B=subs(B,diff(E,t),(4*pi*k0/AC)*I)
% (2*pi*I*k0*r)/(AC*c^2)
B=subs(B,AC,pi*R^2)
% (2*I*k0*r)/(R^2*c^2)