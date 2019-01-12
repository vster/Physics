% Ampere's Law

syms k0 I c r
B=2*k0*I/(c^2*r)

% int_c()B*dS
% int_c()B*dS=int_c()B*ds=(2*k0*I/(c^2*r))(2*pi*R)=(4*pi*k0/c^2)*I
% int_c(curcle)B*dS=int_c(All contour)B*dS

% B1*ds1=B1*(ds1'+ds1'')
% B*ds1''=0 => B1*ds1=B1*ds1'

% int_c(All cont)=int_c(Curcle)B*ds=4*pi*(k0/c^2)*I
% int_c(C)B*ds=(4*pi*k0/c^2)*I    Ampere's Law   (18-1)

% int_c(C)B*ds=(4*pi*k0/c^2)*int()j*dA           (18-2)
% where
% j -  current density

% int_c()B*ds=mu0*I

% Magnetic flux
% PhiE=int(S)E*dA
% PhiB=int_c(S)B*dA

% int_c()B*dA=0                     (18-3)
