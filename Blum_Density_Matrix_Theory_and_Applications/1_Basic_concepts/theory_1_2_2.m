% Pure and mixed photon polarization states

syms a1 a2 ket_ex ket_ey
ket_e=a1*ket_ex+a2*ket_ey                        % (1.2.6)
syms beta delta
ket_e=cos(beta)*ket_ex+exp(i*delta)*sin(beta)*ket_ey         % (1.2.7)