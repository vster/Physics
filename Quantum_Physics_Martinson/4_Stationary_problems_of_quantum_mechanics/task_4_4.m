clear
syms hp n1 n2 n3 a m0 N pi
En1n2n3=(hp^2*pi^2*(n1^2 + n2^2 + n3^2))/(2*a^2*m0)
Nn=[3 6 9 11 12 14]
En=(hp^2*pi^2*N)/(2*a^2*m0)

E5=(hp^2*pi^2*Nn(5))/(2*a^2*m0)
E6=(hp^2*pi^2*Nn(6))/(2*a^2*m0)

dE=E6-E5
% (hp^2*pi^2)/(a^2*m0)

K6=6
