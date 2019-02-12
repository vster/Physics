clear
syms P phiA phiB k D_L
P0=P*cos((phiA-phiB+k*D_L)/2)^2

P00=subs(P0,[phiA phiB k*D_L],[0 0 pi])
% 0

P00=subs(P0,[phiA phiB k*D_L],[0 pi/2 pi])
% P/2

P01=subs(P0,[phiA phiB k*D_L],[pi 0 pi])
% P

P01=subs(P0,[phiA phiB k*D_L],[pi pi/2 pi])
% P/2

P00=subs(P0,[phiA phiB k*D_L],[pi/2 0 pi])
% P/2

P00=subs(P0,[phiA phiB k*D_L],[pi/2 pi/2 pi])
% 0

P01=subs(P0,[phiA phiB k*D_L],[3*pi/2 0 pi])
% P/2

P01=subs(P0,[phiA phiB k*D_L],[3*pi/2 pi/2 pi])
% P
