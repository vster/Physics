clear
syms h g
syms t hp real
ket_Psi(t)=exp(-i*h*t/hp)*[cos(g*t/hp);-i*sin(g*t/hp)]

% i*hp*d/dt|Psi>=OpH|Psi>
H=[h g;g h]
qq1=simplify(i*hp*diff(ket_Psi,t))
% exp(-(h*t*1i)/hp)*(h*cos((g*t)/hp) - g*sin((g*t)/hp)*1i)
% exp(-(h*t*1i)/hp)*(g*cos((g*t)/hp) - h*sin((g*t)/hp)*1i)
qq2=simplify(H*ket_Psi)

qq1-qq2
% 0
% 0

ket_Psi_0=ket_Psi(0)
% [1;0]