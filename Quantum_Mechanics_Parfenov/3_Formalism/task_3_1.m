clear
syms x nu real
f(x)=x^nu
% int(D)|Psi|^2*d_ksi=
I=int(f^2,x,0,1)
% piecewise(-1/2 < nu, 1/(2*nu + 1), nu <= -1/2, Inf)