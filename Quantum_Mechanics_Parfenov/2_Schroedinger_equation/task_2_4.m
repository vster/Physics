syms En t hp x
syms psi_n(x)
Psi_n(x,t)=psi_n(x)*exp(-i*En*t/hp)

syms E0 G
assume(E0>0)
Psi_n(x,t)=psi_n(x)*exp(-i*(E0+1i*G)*t/hp)

I=simplify(int(Psi_n'*Psi_n,x))
% exp((t*(G^2 + abs(G)^2))/(G*hp))*int(abs(psi_n(x))^2, x)=1
% (t*(G^2 + abs(G)^2))/(G*hp)=0
% t*2G/hp=0 => G=0