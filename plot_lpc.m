function [vector]=plot_lpc( audio )
%LPC Summary of this function goes here
%   Detailed explanation goes here
ordre_lpc = 20;
[coef,error] = lpc(audio, ordre_lpc);
[vector,freq_angular]=freqz(1,coef,1024);
%plot(20*log(abs(vector)))
end

