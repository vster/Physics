% m0
% F=-grad(U)
% OperA -?

% v=p/m0 =-(i*hp/m0)Nabla
% OperA=dOperV/dt=1/m0*dOperP/dt=i/(m0*hp)*[OperH*OperP-OperP-OperH]=
% OperA=1/m0*[OperH*Nabla-Nabla*OperH]
% OperH=hp^2/(2*m0)*Delta+OperU
% then
% OperA=1/m0*[OperU*Nabla-Nabla*OperU]
clear
syms x y z
syms Psi(x,y,z)
Sw=OperU(gradient(Psi))-gradient(OperU(Psi))
% -diff(U(x, y, z), x)*Psi(x, y, z)
% -diff(U(x, y, z), y)*Psi(x, y, z)
% -diff(U(x, y, z), z)*Psi(x, y, z)
% =-(gradient(U))*Psi = OperF(Psi)
% OperA=OperF/m0 => m0*OperA=OperF