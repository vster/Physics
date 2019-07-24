% Maxwell equations for direct currents

% MKS unit system, using k0
% I.   int_c()E*dA=4*pi*k0*Q    - Gauss theorem
syms A E(A) k0 Q
eq1=int(E(A),A)==4*pi*k0*Q

% II.  int_c()E*ds=0
syms s E(s)
eq2=int(E(s),s)==0

% III. int_c()B*dA=0
syms A B(A)
eq3=int(B(A),A)==0

% IV.  int_c()B*ds=(4*pi*k0/c^2)*I  - Ampere's Law
syms s B(s) k0 c I
eq4=int(B(s),s)==(4*pi*k0/c^2)*I 

% MKS unit system, using eps0 and mu0
% I.   int_c()E*dA=(1/epsilon0)*Q    - Gauss theorem
syms A E(A) epsilon0 Q
eq1=int(E(A),A)==(1/epsilon0)*Q

% II.  int_c()E*ds=0
syms s E(s)
eq2=int(E(s),s)==0

% III. int_c()B*dA=0
syms A B(A)
eq3=int(B(A),A)==0

% IV.  int_c()B*ds=mu0*I  - Ampere's Law
syms s B(s) mu0 I
eq4=int(B(s),s)==mu0*I
