load fig_tabs.mat
load data_load.mat
%%  Kowariancja (cov) oraz korelacja (corr) 
format
datNames = { 'dat1' 'dat2' 'dat3' 'dat4' 'dat5' 'dat6' 'dat7' 'dat8' 'dat9' 'dat10' 'dat11' };
corrk6 = corr(t_dane(:,1:11));
corrk6 = array2table(corrk6);
corrk6.Properties.RowNames = datNames;
corrk6.Properties.VariableNames = datNames;
writetable(corrk6, 'corrk6.xls','WriteRowNames', true);
