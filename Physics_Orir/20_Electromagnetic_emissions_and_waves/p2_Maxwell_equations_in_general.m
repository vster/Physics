% Maxwell equations for direct currents

% MKS unit system, using k0
% I.   Gauss theorem
%      int_c()E*dA=4*pi*k0*int()ro*dV
% II.  Faraday law
%      int_c()E*ds=-int()(dB/dt)*dA
% III. Lack of magnetic charges
%      int_c()B*dA=0
% IV.  Modified Ampere's law
%      int_c()B*ds=(4*pi*k0/c^2)*I+1/c^2*int()(dE/dt)*dA

% MKS unit system, using eps0 and mu0 (SI system)
% I.   Gauss theorem
%      int_c()E*dA=(1/eps0)*int()ro*dV
% II.  Faraday law
%      int_c()E*ds=0
% III. Lack of magnetic charges
%      int_c()B*dA=0
% IV.  Modified Ampere's law
%      int_c()B*ds=mu0*int()j*dA+mu0*eps0*int()(dE/dt)*dA

% F=q*E+q*v*B