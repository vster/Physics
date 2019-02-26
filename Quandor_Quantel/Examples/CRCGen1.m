msg = randi([0 1],100,1);

gen = comm.CRCGenerator('z^16 + z^15 + z^2 + 1','ChecksumsPerFrame',2);
codeword = step(gen,msg);

detect = comm.CRCDetector('z^16 + z^15 + z^2 + 1','ChecksumsPerFrame',2);
[~, err] = step(detect,codeword)