clear
syms A B C D
M=[A B;C D]

[V,D]=eig(M) 
% V =
% [ (A/2 + D/2 - (A^2 - 2*A*D + D^2 + 4*B*C)^(1/2)/2)/C - D/C, (A/2 + D/2 + (A^2 - 2*A*D + D^2 + 4*B*C)^(1/2)/2)/C - D/C]
% [                                                         1,                                                         1]
% D =
% [ A/2 + D/2 - (A^2 - 2*A*D + D^2 + 4*B*C)^(1/2)/2,                                               0]
% [                                               0, A/2 + D/2 + (A^2 - 2*A*D + D^2 + 4*B*C)^(1/2)/2]