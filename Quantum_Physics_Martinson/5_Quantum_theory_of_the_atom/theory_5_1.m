% Quantum properties of atoms
clear
syms n k R1
lam(n,k)=1/(R1*(1/n^2-1/k^2))                    % (5.1a)
% k>n
lam=subs(lam,R1,109678)

lamv=zeros(4,10)
for n=1:4
    for k=n+1:10
        lamv(n,k)=lam(n,k)*1e9;
    end
end
disp(lamv)

syms n k R
w(n,k)=R*(1/n^2-1/k^2)                          % (5.1b)
w=subs(w,R,2.067e16)

wv=zeros(4,10)
for n=1:4
    for k=n+1:10
        wv(n,k)=w(n,k);
    end
end
disp(wv)

% Experience Franck-Hertz
syms h c epsf
lam=h*c/epsf
digits(3)
lamv=vpa(subs(lam,[h c epsf],[6.62e-34 3e8 4.9*1.6e-19]))
% 2.53e-7 m = 253 nm
