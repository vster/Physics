% Parameterization of the density matrix

% Multiply the expression (1.1.18) on the right by the Pauli matrix sigi 
% and calculate the trace of the resulting operator
% tr OpRo*sigi=Wa*tr(|hia><hia|sigi)+Wb*tr(|hib><hib|sigi)=
%    =Wa*<hia|sigi||hia>+Wb*<hib|sigi|hib>                (1.1.30)
% then use (1.1.6) and (1.1.21)
% tr(|hi><hi|sigi)=<hi|sigi|hi>                           (1.1.31)
% Subs (1.1.14a) to (1.1.30) we get 
% tr(OpRo*sigi>=Pi                                        (1.1.32)
% And so
% OpRo=1/2*[1+Pz,Px-1i*Py;Px+1i*Py,1-Pz]                  (1.1.33)
syms Px Py Pz
OpRo=1/2*[1+Pz,Px-1i*Py;Px+1i*Py,1-Pz]
tr_ro=simplify(trace(OpRo^2))
% Px^2/2 + Py^2/2 + Pz^2/2 + 1/2

% In the following, we will consider the density matrix 
% as a definite expression (1.1.33)

% Show the example
% <+1/2|OpRo|+1/2>=1/2*(1+Pz)
% <+1/2,x|OpRo|+1/2,x)=1/2*(1+Px)
% <+1/2,y|OpRo|+1/2,y>=1/2*(1+Py)

% (x,y,z) -> (x1,y1,z1), then
% Px1=Py1=0, Pz1=|P|
% OpRo=1/2*[1+|P|,0;0,1-|P|]                               (1.1.34a)
% or
% OpRo=1/2*(1-|P|)*[1,0;0,1]+|P|*[1,0;0,0]                 (1.1.34b)

% If the beam under consideration is completely polarized
% |P|=1, then
% OpRo=[1,0;0,0]                                     (1.1.35)
% and the bundle is in pure condition |+1/2,z1>

% If the beam is not polarized
% |P|=0 and
% OpRo=1/2*[1,0;0,1]                                 (1.1.36)
