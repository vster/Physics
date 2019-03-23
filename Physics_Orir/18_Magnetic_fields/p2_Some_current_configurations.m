% Some current configurations

% Kernel
% Outside kernel
% int_c()B*ds=(4*pi*k0/c^2)*I
% B*(2*pi*r)=(4*pi*k0/c^2)*I
clear
syms k0 c I r
B=(2*pi*k0/c^2)*I/r  % for r>R

% Inside kernel
% r<R
% int_c()B*ds=(4*pi*k0/c^2)*int()j*dA
% B*(2*pi*R)=(4*pi*k0/c^2)*j*(pi*r^2)
% B=(2*pi*k0/c^2)*j*r=(2*k0/c^2)*(I/R^2)*r  (r<R)   (18-4)
syms R r
B=(2*k0/c^2)*(I/R^2)*r

syms N m C s A
B_si=subs(B,[k0 c I R r],[N*m^2/C^2 m/s A m m])
% (2*A*N*s^2)/(C^2*m)~N/(A*m)~T

% B=cross(v,E)/c^2
% E=2*pi*k0*ro*r
% B=v/c^2*(2*pi*k0*ro*r)=(2*pi*k0/c^2)*(ro*v)*r
syms ro v
B=(2*pi*k0/c^2)*(ro*v)*r

B_si=subs(B,[k0 c ro v r],[N*m^2/C^2 m/s C/m^3 m/s m])
% (2*pi*N*s)/(C*m)~N/(A*m)~T

% Flat currents
% If=sigma*v  
% B=1/c^2*cross(v,E)
% B=(2*pi*k0/c^2)*If         - flat current  (18-5)
syms If
B=(2*pi*k0/c^2)*If                          

B_si=subs(B,[k0 c If],[N*m^2/C^2 m/s A/m])
% (2*pi*A*N*s^2)/(C^2*m)~(N)/(A*m)~T

% Solenoid
% B=1/c^2*cross(v,E)
% Surface current
% Is=nt*I
% where 
% nt - number of turns per unit length
% int_c(ABCD)B*ds=(4*pi*k0/c^2)*Itot
% Bin*int(AB)ds+int(BC)B*ds+Bout*int(CD)ds+
%     +int(DA)B*ds=4*pi*(k0/c^2)*(Is*x0)
% Bin*(x0)+0+0+0=(4*pi*k0/c^2)*Is*x0
% Bin=(4*pi*k0/c^2)*Is                         (18-6)
% Is=nl*I
% B=(4*pi*k0/c^2)*Is=(4*pi*k0/c^2)*(N*I)/L     (18-7)
syms N I L
B=(4*pi*k0/c^2)*(N*I)/L

B_si=subs(B,[k0 c N I L],[N*m^2/C^2 m/s 1 A m])
% (4*pi*A*N*s^2)/(C^2*m)~(N)/(A*m)~T

