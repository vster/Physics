% phi=k*d*sin(teta)-pi/2
syms teta
phi1=pi/2*(sin(teta)-1)
syms I0 N
I=I0*sin(N*phi/2)^2/sin(phi/2)^2
I=subs(I,[N phi],[4 phi1])
% (I0*sin(pi*(sin(teta) - 1))^2)/sin((pi*(sin(teta) - 1))/4)^2
fplot(subs(I,I0,1))
grid on

