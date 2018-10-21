% t=0
% dx0 = 1 mkm
% dx -? at t = 1 s

syms hp m delta_x0 t
delta_x=hp/(m*delta_x0)*t
delta_x1=subs(delta_x,[hp m delta_x0 t],sym([1e-34 9e-31 1e-6 1],'d'))
% 111.1 m