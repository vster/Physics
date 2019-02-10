% AC circuits

clear
% Capacitance
% dV/dt=1/C*dq/dt
% Subst here V=V0*sin(w*t) and I=dq/dt, then
% w*V0*cos(w*t)=I/C
% from there
% I=w*C*V0*cos(w*t)=w*C*V0*sin(w*t+pi/2)
% or
% I=I0*sin(w*t+pi/2)
% here I0=w*C*V0 - current amplitude
% V0=(1/(w*C))*I0
% XC=1/(w*C) - capacitance                  (19-11)
% V0=I0*XC                                  (19-12)

% Inductive resistance
% Vapp=V0*sin(w*t)
% Vapp=L*dI/dt
% then
% dI/dt=(1/L)*V0*sin(w*t)
syms L V0 w t
dIt=(1/L)*V0*sin(w*t)
I=int(dIt,t)
% -(V0*cos(t*w))/(L*w)
% I=(V0/(w*L))*sin(w*t-pi/2)
% XL=w*L - Inductive resistance             (19-13)

% Serial connection
syms I0 R XL XC w t
VR=I0*R*sin(w*t)
VL=XL*I0*sin(w*t+pi/2)
VC=XC*I0*sin(w*t-pi/2)
V=VR+VL+VC
% I0*R*sin(t*w) - I0*XC*sin(pi/2 - t*w) + I0*XL*sin(pi/2 + t*w)
% V/I0=
eq1=simplify(V/I0)
% XL*cos(t*w) - XC*cos(t*w) + R*sin(t*w)
% R*sin(t*w)+(XL-XC)*cos(w*t)              (19-14)
eq1=R*sin(t*w)+(XL-XC)*cos(w*t) 
% phi=atan((XL-XC)/R)
Z=sqrt(R^2+(XL-XC)^2)
syms Z phi
% (1/Z)*V/I0=
eq2=eq1/Z
% (R*sin(t*w) - cos(t*w)*(XC - XL))/Z
eq2=cos(phi)*sin(w*t)+sin(phi)*cos(w*t)
eq2=simplify(eq2)
% sin(phi + t*w)
V=Z*I0*sin(w*t+phi)                    % (19-15)
% Z - impedance
syms L C R
% V0/I0=Z=
Z=sqrt(R^2+(w*L-1/(w*C))^2) % (serial impedance)    (19-16)

% Resonance
% Z is min when
% w*L-1/(w*C)=0
% or
% w=1/sqrt(L*C)
w0=1/sqrt(L*C)   % Resonance frequancy
% or
f0=1/(2*pi*sqrt(L*C))

% Power
syms I0 V0 phi w t
I(t)=I0*sin(w*t)
V(t)=V0*sin(w*t+phi)
P(t)=V(t)*I(t)
P=int(P,t,0,2*pi/w)/int(1,t,0,2*pi/w)
% P=(I0*V0*cos(phi))/2                      (19-7)
% cos(phi)=R/Z
syms R Z
P=subs(P,[cos(phi) V0],[R/Z Z*I0])
% (I0^2*R)/2
% I0^2/2=Irms^2
% Irms=sqrt(<I^2>)
I2m=int(I(t)^2,t,0,2*pi/w)/int(1,t,0,2*pi/w)
% I0^2/2
% So
% Irms=I0/sqrt(2)
% P=Irms^2*R
