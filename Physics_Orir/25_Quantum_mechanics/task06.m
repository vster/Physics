% delta_x=hp/(m*delta_x0)*t = delta_x0
% delta_x0=sqrt((hp/m)*t)
syms hp m t
delta_x0=sqrt((hp/m)*t)
delta_x0=subs(delta_x0,[hp m t],sym([1e-34 9e-31 1],'d'))
