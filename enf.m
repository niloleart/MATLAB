function [ audio,entrada ] = enf( w_len )
%Enfinestrem la nostra senyal d'audio afegint zeros al final per tal
%de poder dividir-la per un múltiple seu.

entrada = transpose(audioread('music.wav'));
num_win = length(entrada)/w_len;
num_win_int = ceil(num_win);
dif = num_win_int - num_win;
mostres_dif = dif * w_len;
entrada = [entrada, zeros(1,mostres_dif)];
audio = reshape(entrada, w_len, num_win_int);
end


