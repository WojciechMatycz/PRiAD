load fig_tabs.mat
load data_load.mat
%% Normalizacja min-max i standaryzacja; stadnkX oraz resultStandkX daja takie same wyniki
close all
    
normk1 = calc_minMax_Stand(k1);
normk2 = calc_minMax_Stand(k2);
normk3 = calc_minMax_Stand(k3);
normk4 = calc_minMax_Stand(k4);
normk5 = calc_minMax_Stand(k5);
normk6 = calc_minMax_Stand(k6);

function [normk, standk, resultStandk] = calc_minMax_Stand(k1)
    o = length(k1);
    normk = (k1 - ones(o,1)*min(k1))./(ones(o,1)*(max(k1)-min(k1)));   %normalizacja min-max
    standk = (k1 - ones(o,1)*mean(k1))./(ones(o,1)*std(k1));               %standaryzacja
    resultStandk = zscore(k1);     %funkcja realizujaca standaryzacje
end