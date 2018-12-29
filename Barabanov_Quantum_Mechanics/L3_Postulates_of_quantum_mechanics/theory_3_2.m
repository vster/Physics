% Postulates and their consequences

% I postulate
% int()|Psi(q,t)|^2 dq = 1   <=> <Psi|Psi>=1
syms q t real
syms Psi(q,t)
int(abs(Psi)^2,q)
% int(abs(Psi(q, t))^2, q) = 1

% II postulate
% a)
% Psi1(q,t) is wave function of state 1
% Psi2(q,t) is wave function of state 2
% then
% c1*Psi1+c2*Psi2 - is wave function of new state
syms q t real
syms c1 c2
syms Psi1(q,t) Psi2(q,t)
Psi=c1*Psi1+c2*Psi2
% b) 
% If the measurement in state 1 gives 1
% and the measurement in state 2 gives 2
% then 
% the measurement in superposition state give 1 or 2

% III postulate
% Each physical quantity F is associated with an operator OperF
% If Psi_f(q) is own function of operator OperF, then
% the measurement of F gives own value f.

% Corollaries from the II and III postulates
% Let
% OperF(Psi_f1(q))=f1*Psi_f1(q)
% OperF(Psi_f2(q))=f2*Psi_f2(q)
% then measurement of F in state Psi
% Psi=c1*Psi_f1+c2*Psi_f2
% gives f1 or f2

% Any wave function Psi(q) is representable as superposition
% Psi(q)=sum(n)c(n)*Psi_n(q)  ,if spectrum of F is discrete
% or
% Psi(q)=int()c(f)*Psi_f(q)*df ,if spectrum of F is continuous
% 
% In general
% Psi(q)=sum(n)c(n)*Psi_n(q)+int()c(f)*Psi_f(q)*df

% IV postulate
% Let Psi(q) is wave function
% Psi(q)=sum(n)c(n)*Psi_n(q)+int()c(f)*Psi_f(q)*df
% Then
% a) measurement of F gives f(n) with probability |c(n)|^2
% b) measurement of F gives value in interval (f,f+df)
%    with probability |c(f)|^2*df
% The normalization condition is
% sum(n)|c(n)|^2+int()|c(f)|^2*df = 1

% Corollary 1. Explicit expressions for amplitudes.
% Psi(q)=sum(n)c(n)*Psi_n(q)+int()c(f)*Psi_f(q)*df
% int()|Psi|^2*dq=1=sum(n)|c(n)|^2+int()|c(f)|^2*df
% On the other hand
% int()Psi'*Psi*dq=sum(n)c(n)'<Psi_n|Psi>+int()c(f)'<Psi_f|Psi>df
% And so
% c(n)=<Psi_n|Psi>
% c(f)=<Psi_f|Psi>

% Corollary 2. Normalization conditions
% <Psi_n|Psi_n1>=dirac_n_n1
% <Psi_f|Psi_f1>=dirac(f-f1)
% <Psi_n|Psi_f>=0

% Corollary 3. Completeness condition
% sum(n)Psi_n(q1)'*Psi_n(q)+int()Psi_f(q1)'*Psi_f(q)*df=dirac(q-q1)

% Corollary 4. Mean values of physical quantities
% From Col.1 we have
% c(n)=<Psi_n|Psi>
% c(f)=<Psi_f|Psi>
% then
% <F>=sum(n)f(n)*|c(n)|^2+int()f*|c(f)|^2*df
% and
% <F>=<Psi|OperF(Psi)> = <Psi|OperF|Psi>





