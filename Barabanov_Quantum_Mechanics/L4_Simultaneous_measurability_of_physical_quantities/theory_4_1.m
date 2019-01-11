% Simultaneously measurable values

syms n q
syms Psin(q)
F_Psi=OpF(Psin)
% Psin(q)*f(n)
G_Psi=OpG(Psin)
% Psin(q)*g(n)

% Switch
% [OpF,OpG]=OpF*OpG-OpG*OpF

% If F and G simultaneously measurable, then [OpF,OpG]=0
% OpG*OpG=OpG*OpF, or 
% OpF(OpG(Psi(q)))=OpG(OpF(Psi(q)))

% Psi(q)=sum(n)c(n)*Psin(q)


function F=OpF(q)
syms n f(n)
F=f(n)*q;
end

function G=OpG(q)
syms n g(n)
G=g(n)*q;
end