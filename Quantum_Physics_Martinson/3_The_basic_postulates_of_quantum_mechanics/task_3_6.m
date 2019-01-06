% <f>=int(RN)Psi'*(OperPhi(Psi))*dV
% d<f>/dt=int(RN)dPsi'/dt*(OperPhi(Psi))*dV+
%   +int(RN)Psi'*(OperPhi(dPsi/dt)*dV
% i*hp*dPsi/dt=OperH(Psi), -i*hp*dPsi'/dt=OperH(Psi')
%...
% d<f>/dt=i/hp*int(RN)Psi'((OperH*OperPhi-OperPhi*OperH)Psi)dV
% dPhi/dt=i/hp*(OperH*OperPhi-OperPhi*OperH)