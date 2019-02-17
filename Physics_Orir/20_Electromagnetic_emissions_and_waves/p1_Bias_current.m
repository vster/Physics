% Bias current

% Faraday Law
% int_c()E*ds=-dPhIB/dt
% where
% PhiB=int()B*dA - closed-loop magnetic flux

% int_c(curcle)B*dA=4*pi*k0/c^2*int(S)j*dA
% int()j*dA=I
% B*2*pi*R=4*pi*k0*I/c^2
% B=(2*k0/c^2)*(I/r)

% Amper Law at correct form
% int_c()B*ds=4*pi*(k0/c^2)*int()j*dA+(1/c^2)*int()(dE/dt)*dA

% E=4*pi*k0*Q/AC
% dE/dt=(4*pi*k0/AC)*dQ/dt=(4*pi*k0/AC)*I           (20-1)
% int(S1)(dE/dt)*dA=4*pi*k0*I

% And so
% int_c()B*ds=4*pi*(k0/c^2)*int()j*dA+(1/c^2)*int()(dE/dt)*dA   (20-2)
%              real current             bias current