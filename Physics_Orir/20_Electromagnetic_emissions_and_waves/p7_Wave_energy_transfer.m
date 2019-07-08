% Wave energy transfer

% P=dot(F,v)
% P=dot(T,v)=T*(dy/dt)*sin(alfa)
% as u=dy/dt
% Angle alfa is small, so
% sin(alfa)=-dy/dx
% Then
% P=-T*(dy/dt)*(dy/dx)
syms T t x y(x,t) y0 w u
P=-T*diff(y,t)*diff(y,x)
y1=y0*cos(w*(t-x/u))
P=simplify(subs(P,y,y1))
% (T*w^2*y0^2*sin(w*(t - x/u))^2)/u
P=subs(P,x,0)
% (T*w^2*y0^2*sin(t*w)^2)/u
Pm=int(P,t,0,2*pi/w) 
% (pi*T*w*y0^2)/u   (Average power carried by the string) (20-18)