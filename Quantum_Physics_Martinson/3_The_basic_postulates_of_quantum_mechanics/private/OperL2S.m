function L2S=OperL2S(psi)
syms r phi teta hp real
L2S=-hp^2*(1/sin(teta)*diff(sin(teta)*diff(psi,teta),teta)+...
    1/sin(teta)^2*diff(psi,phi,2));
L2S=simplify(L2S);
end