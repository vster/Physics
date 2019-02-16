% RC and RL chains

% RC-chains
% q/C=I*R
% I=-dq/dt
% q/C=-R*dq/dt
% dq/q=-dt/(R*C)

% dq/dt+q/(R*C)=0
clear
syms t R C q(t)
eq1=diff(q,t)+q/(R*C)
qsol=dsolve(eq1)
% C4*exp(-t/(C*R))
syms q0
q=q0*exp(-t/(R*C))

% We will show that 
% VR=E*exp(-t/(R*C))
% E=I*R+q/C                        (19-18)
syms R C E I q
eq2=E-I*R-q/C
% 0=R*dI/dt+1/C*dq/dt=R*dI/dt+1/C*I
syms R C t I(t)
eq3=R*diff(I,t)+1/C*I
Isol=dsolve(eq3)
% C6*exp(-t/(C*R))
% I=I0*exp(-t/(R*C))               (19-19)
syms I0
Isol=I0*exp(-t/(R*C))
eq2=subs(eq2,I,Isol)
% E - R*(t -> I0*exp(-t/(C*R))) - q/C
% E=R*I0*exp(-t/(R*C))+q/C
% if t=0 then q=0
% E=R*I0 => I0=E/R
% VR=R*I=R*I0*exp(-t/(R*C))
% VR=E*exp(-t/(R*C))                  (19-20)

RC=R*C
RC=vpa(subs(RC,[R C],[1e6 10e-6]))
% 10.0 s

% RL-chains
syms I0 R L t
I=I0*exp(-R*t/L)
