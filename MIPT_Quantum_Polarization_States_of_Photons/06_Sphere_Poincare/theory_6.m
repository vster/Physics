clear
syms teta phi
sig1=[0 1;1 0]    % - Rotate the polarization plane -45 grad
sig2=[0 -i;i 0]   % - Phase shift -45 grad
sig3=[1 0;0 -1]

ket_psi=[cos(teta/2)*exp(-i*phi/2);...
         sin(teta/2)*exp(i*phi/2)]                   % (24)
     
ket_psi1=subs(ket_psi,[teta,phi],[0,0]) 
% 1             - lin horiz
% 0
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

ket_psi1=subs(ket_psi,[teta,phi],[pi,0]) 
% 0             - lin vert
% 1
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

ket_psi1=subs(ket_psi,[teta,phi],[pi/2,0])
% 2^(1/2)/2      1   - lin 45 grad
% 2^(1/2)/2      1
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

ket_psi1=subs(ket_psi,[teta,phi],[pi/2,pi/2])
% 1/2 - 1i/2     1-i   - curcle right 
% 1/2 + 1i/2     1+i
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

ket_psi1=subs(ket_psi,[teta,phi],[pi/2,pi])
% -(2^(1/2)*1i)/2    -i    - lin 135 grad
%  (2^(1/2)*1i)/2     i
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

ket_psi1=subs(ket_psi,[teta,phi],[pi/2,3*pi/2])
% - 1/2 - 1i/2    -1-i   - curcle left    
% - 1/2 + 1i/2    -1+i
sig1*ket_psi1
sig2*ket_psi1
sig3*ket_psi1

% sx=<psi|sigx|psi>=sin(teta)*cos(phi)           (25)
% sy=<psi|sigy|psi>=sin(teta)*sin(phi)           (26) 
% sz=<psi|sigz|psi>=cos(teta)                    (27)

sx=sin(teta)*cos(phi)
sy=sin(teta)*sin(phi)
sz=cos(teta)
S=[sx,sy,sz]

S1=subs(S,[teta,phi],[0,0])
% [ 0, 0, 1]  - lin hor
S1=subs(S,[teta,phi],[pi,0])
% [ 0, 0, -1]  - lin vert
S1=subs(S,[teta,phi],[pi/2,0])
% [ 1, 0, 0]   - lin 45 grad
S1=subs(S,[teta,phi],[pi/2,pi/2])
% [ 0, 1, 0]   - curcle right
S1=subs(S,[teta,phi],[pi/2,pi])
% [ -1, 0, 0]  - lin 135 grad
S1=subs(S,[teta,phi],[pi/2,3*pi/2])
% [ 0, -1, 0]  - curcle left
