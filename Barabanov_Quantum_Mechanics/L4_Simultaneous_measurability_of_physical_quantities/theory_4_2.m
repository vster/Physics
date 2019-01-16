% Uncertainty ratio

% OpF and OpG are opearators of F and G
% OpF'==OpF, OpG'=OpG, [OpF,OpG]==i*OpK
% then
% <(DF)^2>*<(DG)^2> >= <K>^2/4
% ...

% Sample
syms x hp
syms Psi(x)

% [OpX,OpPx]
ComXPx=Commutator(@OpX,@OpPx,Psi)
% hp*Psi(x)*1i => OpK=hp
% Then
% <(dx)^2>*<(dpx)^2>>=hp^2/4

% If Psi0 is the wave function of the state in which 
% <(DF)^2>*<(DG)^2>=<K>^2/4
%  then Psi0 is the wave function of the coherent state.


