% W = 3 W
% A = 0.1*0.1

W=3
A=0.1*0.1
Sm1=W/A
% 300 W/m^2
% From (21-3)
% Sm=(c/(4*pi*k0))*Em^2
% Em^2=E0^2/2
% Sm=(c/(8*pi*k0))*E0^2
syms k0 c Sm
E0=sqrt(8*pi*k0*Sm/c)
digits(3)
E01=vpa(subs(E0,[k0 Sm c],[9e9 Sm1 3e8]))
% 476.0 W/m


