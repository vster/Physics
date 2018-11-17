% Electric fields
clear
% Solid ball or hollow sphere, outside the body
syms k0 Q r R x eps0 lam sigma ro real
E=k0*Q/r^2
% SI
E=(1/(4*pi*eps0))*Q/r^2

% Hollow sphere, inside the body
E=0

% Solid ball, inside the body
E=(k0*Q/R^3)*r
% SI
E=(1/(4*pi*eps0))*(Q/R^3)*r

% Conductor or rod, outside the body
E=2*k0*lam/r
% SI
E=(1/(4*pi*eps0))*(lam/r)

% Conductor or rod, inside the body
E=2*k0*(lam/R^2)*r
% SI
E=(1/(4*pi*eps0))*(lam/R^2)*r

% One plane (layer), on either side
E=2*pi*k0*sigma
% SI
E=(1/(2*eps0))*sigma

% Two planes between planes
E=4*pi*k0*sigma
% SI
E=(1/eps0)*sigma

% Plate inside
E=4*pi*k0*ro*x
% SI
E=(1/eps0)*ro*x

% Conductor near the surface
E=4*pi*k0*sigma
% SI
E=(1/eps0)*sigma
