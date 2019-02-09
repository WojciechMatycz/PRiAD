load fig_tabs.mat
load data_load.mat
%% Ilosc elementów w poszczególnych klasach - wykres ko³owy i s³upkowy
liczKlas = [ length(k1), length(k2), length(k3), length(k4), length(k5), length(k6) ]; %licznosc klas

figure
bar(liczKlas);
xticklabels(figTabVarNames);
title('Ilosc obiektow w poszczególnych klasach');

figure
pie(liczKlas);
title('Procentowa ilosc obiektow w poszczególnych klasach');
legend(figTabVarNames);

% iloscTab = table(length(k1), length(k2), length(k3), length(k4), length(k5), length(k6));
% iloscTab.Properties.RowNames = {'Ilosc'};
% iloscTab.Properties.VariableNames = figTabVarNames;
% writetable(iloscTab,'liczebnoscTab.xls');