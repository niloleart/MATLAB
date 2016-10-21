function [ DCT, audio_recuperat ] = i_dct( audio )
%I_DCT Summary of this function goes here
%   Detailed explanation goes here
DCT = dct(audio);
IDCT = idct(DCT);
%subplot(1,3,1),plot(audio); subplot(1,3,2),plot(DCT); subplot(1,3,3),plot(IDCT);
audio_recuperat = reshape(IDCT,1,[]);
end

