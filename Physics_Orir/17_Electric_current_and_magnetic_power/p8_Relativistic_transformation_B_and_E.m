% Relativistic transformation B and E
clear
% I example
% B=(2*I*k0)/(c^2*y)                         (17-13)
syms I k0 c y
B=(2*I*k0)/(c^2*y)

syms A N m C s
B_si=subs(B,[I k0 c y],[A N*m^2/C^2 m/s m])
% (2*A*N*s^2)/(C^2*m)~(A*N*s^2)/(A^2*s^2*m)~N/(A*s)~T

% B1=k0/c^2*2*(lam1*v)/y
% B1=(1/c^2)*v*E1
% B1=(1/c^2)*cross(v1,E1)
% B=(1/c^2)*cross(v,E)                       (17-19)
% B,v,E are vectors
syms v E c
B=v*E/c^2

syms m s V
B_si=subs(B,[v E c],[m/s V/m m/s])
% (V*s)/m^2~T

% II example
% F1=q*v*(2*k0*gamma*I/(c^2*y))   | :q
% where gamma=1/sqrt(1-v^2/c^2)
% E1=v*(2*k0*gamma*I/(c^2*y))
% From (17-13)
% B1=(2*I1*k0)/(c^2*y)     
% I1 -> gamma*I
% B1=2*k0*gamma*I/(c^2*y)
% And so
% E1=-cross(v1,B1)
% then
% E=-cross(v,B)                (17-20)
syms v B
E=-v*B

E_si=subs(E,[v B],[m/s (V*s)/m^2])
% -V/m~V/m
