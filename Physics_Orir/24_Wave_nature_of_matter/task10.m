syms lamB hp pi Ek m0 c
eq1=lamB==(2^(1/2)*hp*pi)/((Ek*m0)^(1/2)*(Ek/(2*c^2*m0) + 1)^(1/2))
Eksol=solve(eq1,Ek)
Ek=Eksol(1)
% (c*(c^2*lamB^2*m0^2 + 4*pi^2*hp^2)^(1/2))/lamB - c^2*m0
pretty(Ek)
Ek=sqrt(m0^2*c^4+h^2*c^2/lamB^2)-m0*c^2