% Encode and decode a sequence of bits using a convolutional 
% encoder and a Viterbi decoder with a defined puncture pattern. 
% Verify that the input and output bits are identical

% Define a puncture pattern matrix and reshape it into 
% vector form for use with the Encoder and Decoder objects.

pPatternMat = [1 0 1;1 1 0];
pPatternVec = reshape(pPatternMat,6,1);

% Create convolutional encoder and a Viterbi decoder in which 
% the puncture pattern is defined by pPatternVec.

ENC = comm.ConvolutionalEncoder(...
    'PuncturePatternSource','Property', ...
    'PuncturePattern',pPatternVec);

DEC = comm.ViterbiDecoder('InputFormat','Hard', ...
    'PuncturePatternSource','Property',...
    'PuncturePattern',pPatternVec);

% Create an error rate counter with the appropriate receive delay.

ERR = comm.ErrorRate('ReceiveDelay',DEC.TracebackDepth);

% Encode and decode a sequence of random bits.

dataIn = randi([0 1],800,1);

dataEncoded = step(ENC,dataIn);

dataOut = step(DEC,dataEncoded);
% Verify that there are no errors in the output data.

errStats = step(ERR,dataIn,dataOut);
errStats(2)