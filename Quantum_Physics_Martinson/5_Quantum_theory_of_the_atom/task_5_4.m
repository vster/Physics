% 1s- and 2p- states
clear
syms r teta phi real
syms psi(r,teta,phi)
dP=int(int(int(abs(psi)^2*r^2*sin(teta),r),teta,0,pi),phi,0,2*pi)

syms dr
syms w(r)
dP=w(r)*dr

syms A a
w1(r)=A*r^2*exp(-2*r/a)
dw1=diff(w1,r)
% 2*A*r*exp(-(2*r)/a) - (2*A*r^2*exp(-(2*r)/a))/a
r1=solve(dw1==0,r)
% r=a
syms B a
w2(r)=B*r^4*exp(-r/a)
dw2=diff(w2,r)
% 4*B*r^3*exp(-r/a) - (B*r^4*exp(-r/a))/a
r2=solve(dw2==0,r)
% r=4*a