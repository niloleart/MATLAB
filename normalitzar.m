function [DCT_norm, coef_lpc]=normalitzar( audio, DCT )
for i=1:size(audio,2)
   [coef_lpc(:,i)] = plot_lpc(audio(:,i));
end
DCT_norm = DCT./abs(coef_lpc);

