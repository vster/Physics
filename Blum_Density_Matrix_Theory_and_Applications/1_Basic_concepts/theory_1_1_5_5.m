% Pure State Identification

% OpRo=1/2*[1+Pz,Px-1i*Py;Px+1i*Py,1-Pz]                  (1.1.33)
syms Px Py Pz
OpRo=1/2*[1+Pz,Px-1i*Py;Px+1i*Py,1-Pz]
tr_ro=simplify(trace(OpRo^2))
% Px^2/2 + Py^2/2 + Pz^2/2 + 1/2 = 1/2*(1+|P|^2)
% and so
% tr(ro^2)=1                                                (1.1.37)
% is a necessary and sufficient condition 
% for the beam to be in a pure state