%% Encode and Decode Using HDLCRC 
% Encode and decode a signal using the HDL-optimized CRC generator and detector. 
%%
% Construct Generator and Detector objects with CRC length 16 and default
% polynomial. Assign 32 bit data to be encoded, in two 16 by 1 columns.
crcGen = comm.HDLCRCGenerator;
crcDet = comm.HDLCRCDetector;
msg = randi([0 1],16,2);
%%
% Run for 12 steps to accommodate the latency of both objects. Assign 
% control signals for all steps. The first two samples are the valid
% data, and the remainder are processing latency. 
numSteps = 12;
startIn = logical([1 0 0 0 0 0 0 0 0 0 0 0]);
endIn   = logical([0 1 0 0 0 0 0 0 0 0 0 0]);
validIn = logical([1 1 0 0 0 0 0 0 0 0 0 0]);
%%
% Assign random input to the |HDLCRCGenerator| System object(TM) while it is
% processing _msg_. The random data is not encoded because the input valid 
% signal is zero for steps 3-10.
randIn = randi([0, 1],16,numSteps-2);
dataIn = [msg randIn];
%%
% Run *HDLCRCGenerator*. The object returns the encoded data in
% |dataOutGen|, and control signals |startOutGen|, |endOutGen|, and
% |validOutGen|. The encoded message is the original message plus a 16 bit checksum. 
%
% *Note:* This object syntax runs only in R2016b or later. If you are using an 
% earlier release, replace each call of an object with the equivalent |step|
% syntax. For example, replace |myObject(x)| with |step(myObject,x)|.
 for i =  1: numSteps
 [dataOutGen(:,i),startOutGen(i),endOutGen(i),validOutGen(i)] = ...
     crcGen(dataIn(:,i),startIn(i),endIn(i),validIn(i));
 end
%%
% Add noise by flipping a bit in the message.
dataOutNoise = dataOutGen;
dataOutNoise(2,4) = ~dataOutNoise(2,4); 
%%
% Run *HDLCRCDetector* to decode the message. The object returns the
% decoded data in |dataOut|, and control signals |startOut|, |endOut|,
% |validOut|, and |err|. The output of the Detector is the input message with the checksum
% removed. If the input checksum was not correct, the err flag is set with 
% the last word of the output.   
for i = 1:numSteps 
[dataOut(:,i), startOut(i),endOut(i), validOut(i),err(i)] = ...
    crcDet(dataOutNoise(:,i),startOutGen(i),endOutGen(i),validOutGen(i));
end
%%
% Use the *Logic Analyzer* to view the input and output signals. 
channels = {'validIn','startIn','endIn',...
    {'dataIn','Radix','Hexadecimal'},...
    'validOutGen','startOutGen','endOutGen',...
    {'dataOutGen','Radix','Hexadecimal'},...
    {'dataOutNoise','Radix','Hexadecimal'},...
    'validOut','startOut','endOut','err',...
    {'dataOut','Radix','Hexadecimal'}};
la = dsp.LogicAnalyzer('Name','CRC Encode and Decode','NumInputPorts',length(channels),...
                      'BackgroundColor','Black','DisplayChannelHeight',8);
                     
 for ii = 1:length(channels)
    if iscell(channels{ii})
        % Display data signals as hexadecimal integers
        c = channels{ii};
        modifyDisplayChannel(la,ii,'Name',c{1},c{2},c{3})  
        dat2 = uint16(bi2de(eval(c{1})')); % convert binary column vector to integer
        chanData{ii} = squeeze(dat2); 
    else
        modifyDisplayChannel(la,ii,'Name',channels{ii})
        chanData{ii} = squeeze(eval(channels{ii})');
    end
 end
la(chanData{:})
%%
%
% <<../HDLCRC_LAwaves.png>>
%
  