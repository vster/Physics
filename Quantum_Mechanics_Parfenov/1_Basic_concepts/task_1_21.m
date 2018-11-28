syms x f(x) g(x)

% [f,px]
sw1=simplify(OperF(OperPx(g))-OperPx(OperF(g)))
% hp*g(x)*diff(f(x), x)*1i
sk1=sw1/g(x)
% hp*diff(f(x), x)*1i

% Impulse operator
function P=OperPx(psi)
syms hp x real
P=-1i*hp*diff(psi,x);
end

function F=OperF(psi)
syms hp x real
syms f(x)
F=f(x)*psi;
end