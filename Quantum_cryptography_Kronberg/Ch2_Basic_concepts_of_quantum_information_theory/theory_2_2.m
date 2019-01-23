% Measurements

% Quantum observables

ket0=[1;0]
ket1=[0;1]

ket_x=ket0
bra_x=ket_x'
ket_y=ket1
bra_y=ket_y'
ket_u=1/sqrt(2)*(ket0+ket1)
bra_u=ket_u'
ket_v=1/sqrt(2)*(ket0-ket1)                   % (3.1)
bra_v=ket_v'

ro0=ket0*ket0'
ro1=ket1*ket1'

I=[1 0;0 1]
MP0=ket_x*bra_x
MP1=ket_y*bra_y
MD0=ket_u*bra_u
MD1=ket_v*bra_v

% Mx>=0, sum(x)Mx=I                             (2.5)
MP0+MP1
MD0+MD1

% Pr(x|ro)=Tr Mx ro                              (2.6)
Pr=trace(MP0*ro0)                                
Pr=trace(MP1*ro0)
Pr=trace(MP0*ro1)
Pr=trace(MP1*ro1)

% Pr(x|ro_psi)=<psi|Mx|psi>                      (2.7)
ket_psi=ket0
Pr=ket_psi'*MP0*ket_psi

% Wave function collapse

% roi=sqrt(Mi)*ro*sqrt(Mi)/(Tr Mi*ro)            (2.8)

% sqrt(MP0)*ro1*sqrt(MP0)/trace(MP0*ro1)

% Impossibility of reliable distinction of non-orthogonal states

ket0'*MP0*ket0 %=1
ket1'*MP0*ket1 %=0
ket0'*MP1*ket0 %=0                              (2.9)
ket1'*MP1*ket1 %=1

% Clear and Fuzzy Observables

% Mi*Mj=KroneckerDelta(i,j)*Mi                  (2.10)

% <phi|psi>=cos(eta)
ket_psi=ket_x
bra_psi=bra_x
ket_phi=ket_u
bra_phi=bra_u
cos_eta=bra_phi*ket_psi % =0.7071=1/sqrt(2)=cos(pi/4) => eta=pi/4
eta=pi/4

M0=(I-ket_psi*bra_psi)/(1+cos(eta))
M1=(I-ket_phi*bra_phi)/(1+cos(eta))             % (2.11)
M_=I-M0-M1

trace(M0*ket_psi*bra_psi)  % =0
trace(M1*ket_phi*bra_phi)  % =1.1439e-16~0