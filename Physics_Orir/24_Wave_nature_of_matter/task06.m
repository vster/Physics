% lamB=(pi*2^(1/2)*hp)/(Ek*m0)^(1/2)
clear
syms lamB pi hp Ek m0
eq1=lamB==(pi*2^(1/2)*hp)/(Ek*m0)^(1/2)
EkSol=solve(eq1,Ek)
% Ek=(2*hp^2*pi^2)/(lamB^2*m0)