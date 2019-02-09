% Faraday law
clear
% EMF=-dPhiB/dt
syms t
syms PhiB(t)
EMF=-diff(PhiB,t)                      % (19-2)
% int_c()E*ds=-dPhiB/dt - Faraday law    (19-3)
% or
% int_c(C)E*ds=-d/dt(int(S)B*dA)
% or
% int_c(C)E*ds=-int(S)(dB/dt)*dA         (19-4)
 
