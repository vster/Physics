% Quantum harmonic oscillator
% Fx=-k*x
% U(x)=k*x^2/2=m*w0^2*x^2/2                   (4.77)
% where w0=sqrt(k/m0)
% a0=sqrt(2*E/(m0*w0^2)) - oscillation amplitude
clear
syms x m0 hp E w0
syms psi(x)
eq1=diff(psi,x,2)+2*m0/hp^2*(E-m0*w0*x^2/2)*psi          % (4.78)
% psi=dsolve(eq1)

% Put eta=2*E/(hp*w0), x0=sqrt(hp/(m0*w0))               (4.79)
% ksi=x/x0

syms eta ksi
syms psi(ksi)
eq2=diff(psi,ksi,2)+(eta-ksi^2)*psi                     % (4.80)
psi1=dsolve(eq2)

% Wave functions are continuous and final only if
% eta=2*n+1, n=0,1,2,3...
% then
syms n
E(n)=hp*w0*(n+1/2)           % n=0,1,2,3...            (4.81)

% Presence of zero oscillations!!!
syms a0 w0 t
x=a0*cos(w0*t)
% dx=sqrt(x2m)=sqrt(a0^2*mean(cos(w0*t)^2))=sqrt(1/2*a0^2)
% E=1/2*m0*a0^2*w0^2 => dx=sqrt(E/(m0*w0^2))
% dp=sqrt(p2m)=sqrt(m0^2*a0^2*w0^2*mean(sin(w0*t)^2))=
%     sqrt(1/2*m0^2*a0^2*w0^2)=sqrt(m0*E)
syms dx dp a0 m0 E
eq3=dx*dp>=hp/2
eq4=subs(eq3,[dx dp],[sqrt(1/2*a0^2) sqrt(m0*E)])
% hp/2 <= (E*m0)^(1/2)*(a0^2/2)^(1/2)
% E>=hp*w0/2