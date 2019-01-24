% Density matrix for polarizations
% ro1=Wa*ket_ea*bra_ea+Wb*ket_eb*bra_eb               (1.2.13)
% where
% Wa=Ia/I, Wb=Ib/I and I=Ia+Ib
ket_p1=[1;0]
ket_m1=[0;1]
syms aa1 aa2 ab1 ab2
ket_ea=aa1*ket_p1+aa2*ket_m1
ket_eb=ab1*ket_p1+ab2*ket_m1
syms Ia Ib Wa Wb
ro1=Wa*ket_ea*ket_ea'+Wb*ket_eb*ket_eb'               % (1.2.14)
ro1=simplify(ro1)
% [       Wa*abs(aa1)^2 + Wb*abs(ab1)^2, Wa*aa1*conj(aa2) + Wb*ab1*conj(ab2)]
% [ Wa*aa2*conj(aa1) + Wb*ab2*conj(ab1),       Wa*abs(aa2)^2 + Wb*abs(ab2)^2]

% From (1.2.14) follows
trace(ro1)
% Wa*abs(aa1)^2 + Wa*abs(aa2)^2 + Wb*abs(ab1)^2 + Wb*abs(ab2)^2
% Wa*(abs(aa1)^2 + abs(aa2)^2)+ Wb*(abs(ab1)^2 + abs(ab2)^2)
% Wa+Wb=1

ro=Ia*ket_ea*ket_ea'+Ib*ket_eb*ket_eb'                % (1.2.16)
ro=simplify(ro)
%[       Ia*abs(aa1)^2 + Ib*abs(ab1)^2, Ia*aa1*conj(aa2) + Ib*ab1*conj(ab2)]
%[ Ia*aa2*conj(aa1) + Ib*ab2*conj(ab1),       Ia*abs(aa2)^2 + Ib*abs(ab2)^2]
trace(ro)                                        
% Ia*abs(aa1)^2 + Ia*abs(aa2)^2 + Ib*abs(ab1)^2 + Ib*abs(ab2)^2   
% tr ro = Ia+Ib=I                                    (1.2.17)

% 1)
ket_p1'*ro1*ket_p1
% Wa*abs(aa1)^2 + Wb*abs(ab1)^2 

ket_m1'*ro1*ket_m1
% Wa*abs(aa2)^2 + Wb*abs(ab2)^2

% 2)
% Photons in pure state |e>
% <e|p1|e>=Wa*|aa|^2+Wb*|ab|^2                        (1.2.18)
% here
% aa=<e|ea>
% ab=<e|eb>

% <e|ro|e>=Ia*|aa|^2+Ib*|ab|^2                        (1.2.19)

% 3)

% 4) 
% For a given photon density matrix to describe a pure state, 
% it is necessary and sufficient
% tr(ro^2)=(tr ro)^2=I^2                              (1.2.20)

% With normalization tr(ro1)=Wa+Wb=1
% then
% tr(ro^2)=1

% In general
% tr (ro^2)<=I^2                                      (1.2.20a)

