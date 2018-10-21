% Uncertainty principle

% |B(p)|^2=(sigx^2/pi)*exp(-(p-p0)^2/(2*(hp/2*sigx)^2)      (25-5)
% |B(p)|^2=(sigx^2/pi)*exp(-(p-p0)^2/(2*sigp^2))            (25-6)
% Compare (25-5) and (25-6) then
% sigp=hp/(2*sigx), sigp*sigx=hp/2              (25-7)

% Uncertainty principle
% delta_x * delta_p >= hp/2                   (25-8)

% Example 1
% psi=int B(k)*exp(i*k*x) dk

clear
syms A k k0 a x real
psi=A*int(exp(1i*k*x),k,k0-a,k0+a)
psi=simplify(psi)
% -(A*(exp(x*(a + k0)*1i) - exp(-x*(a - k0)*1i))*1i)/x
% -(A*(exp(1i*x*a)*exp(1i*k0*x)-exp(-1i*x*a)*exp(1i*k0*x))/x
psi=2*A*(sin(a*x)/x)*exp(1i*k0*x)

psi_2=simplify(psi'*psi)
% (4*A^2*sin(a*x)^2)/x^2

% a*delta_x=1.39
% a=delta_k=delta_p/hp => delta_x*delta_p=1.39*hp

% Wave Packet Speed
% vg=dw/dk
% hp*w=E, hp*k=p
% hp*dw/dk=hp^2*k/m
% dw/dk=hp*k/m=p/m=v => vg=v

% Wave packet spreading
% delta_x=(delta_vg)*t                  (25-9)
% deltavg=dvg/dp*delta_p
% delta_vg=dv/dp*delta_p=1/m*delta_p    (25-10)
% delta_vg=1/m*(hp/delta_x0)
% delta_x=hp/(m*delta_x0)*t
syms hp m delta_x0 t
delta_x=hp/(m*delta_x0)*t
delta_x1=subs(delta_x,[hp m delta_x0 t],sym([1e-34 9e-31 1e-10 1],'d'))
digits(4)
delta_x1=vpa(delta_x1)
% 1.111e6 m = 1100 km
