syms k k0 a A x real
assume (a>0)
B=piecewise(k<k0-a,0,...
                k0-a<=k<k0,A*(1-k0/a)+(A/a)*k,...
                k0<k<=k0+a,A*(1+k0/a)-(A/a)*k,...
                k>k0+a,0)
psi=simplify(int(B*exp(1i*k*x),k,k0-a,k0+a))

psi_2=simplify(psi'*psi)
           