function [ entrada, DCT_norm, coef_lpc, audio_recuperat_norm ] = PrimeraPart( senyal_entrada, w_len )
%PRIMERAPART Summary of this function goes here
%  audio = senyal enfinestrada
%  entrada = senyal entrada amb 0 afegits

[ audio, entrada] = enf(senyal_entrada,w_len);
DCT = dct(audio);
[DCT_norm, coef_lpc]=normalitzar( audio, DCT );

IDCT_norm = idct(DCT_norm);
audio_recuperat_norm = reshape(IDCT_norm,1,[]);
%sound(audio_recuperat_norm, 44100)
end

