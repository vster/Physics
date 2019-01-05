function Py=OperPy(psi)
syms hp y real
Py=-1i*hp*diff(psi,y);
end