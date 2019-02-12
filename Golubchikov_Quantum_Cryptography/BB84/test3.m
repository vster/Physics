clear
syms P phiA phiB k D_L
P0=cos((phiA-phiB+k*D_L)/2)^2

for a=0:pi/2:3*pi/2
    for b=0:pi/2:pi/2
        P00=subs(P0,[phiA phiB k*D_L],[a b pi]);
        disp([a b a-b P00])
    end
end