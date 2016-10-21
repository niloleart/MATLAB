w_len=1024;
[audio,entrada]=enf(w_len);
[DCT,audio_recuperat]=i_dct(audio);
mserror=immse(entrada,audio_recuperat);
%subplot(1,3,1),plot(entrada); subplot(1,3,2),plot(abs(DCT)); subplot(1,3,3),plot(audio_recuperat);
