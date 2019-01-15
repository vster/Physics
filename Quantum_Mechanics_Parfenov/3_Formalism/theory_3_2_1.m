% Unitary transformations and coordinate transformations.

% Transformations that change the state of the system, but not
% varying the length of the vector, called "unitary" and are defined as
% OpU'=OpU^(-1)

% fn=sum(p)=|phi(p)><phi(p)|f(n)>=sum(p)(U(n,p)')|phi(p)>     (3.7)
% (U(n,p))'=<phi(p)|f(n)>  <=>  U(n,p)=<f(n)|phi(p)>
% phi1(n)=<f(n)|psi>                                     (3.8)
% Complex conjugate to (3.7) 
% <f(n)|=sum(p)U(n,p)<phi(p)|                            (3.9)
% Subs (3.9) to (3.8)
% psi1(n)=sum(p)U(n,p)<phi(p)|psi>
% |psi1>=OpU*|psi>                                       (3.10)

% |phi1>=OpU|phi>
% |psi1>=OpU|psi>
% <psi1|phi1>=<psi|phi>
% If |psi>=|phi> then <psi1|psi1>=<psi|psi>

% OpF|phi>=|psi>                                 (3.11)

% From (3.10) we get
% |phi>=OpU^(-1)|phi1>
% |psi>=OpU^(-1)|psi1>
% subs it to (3.11)
% OpF*OpU^(-1)|phi1>=OpU^(-1)|psi1>
% Prod it to OpU we get
% OpF1|phi1>=|psi1>
% where OpF1=OpU*OpF*OpU^(-1)                         (3.12)
