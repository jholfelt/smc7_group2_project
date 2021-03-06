function output = mapRange( outMax, outMin, inMax, inMin, input )
%This function maps an input range of numbers to another output range

% outMax, outMin: the range of the output
% inMax, inMin: the range of the input
% input: input signal

%Clip to inMax
if input > inMax
    input = inMax;
end 

%Clip to inMax
if input < inMin
    input = inMin;
end 

%Calculations. Calculating slope first for simplification
slope = (outMax - outMin) / (inMax - inMin);
output = outMin + slope * (input - inMin);
    
end

