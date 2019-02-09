load fig_tabs.mat
%% %Wykresy %Srednia arytmetyczna 
close all;

figTabAvg_table1 = plot_avg(figTab1, figTabVarNames, 1);
figTabAvg_table2 = plot_avg(figTab2, figTabVarNames, 2);
figTabAvg_table3 = plot_avg(figTab3, figTabVarNames, 3);
figTabAvg_table4 = plot_avg(figTab4, figTabVarNames, 4);
figTabAvg_table5 = plot_avg(figTab5, figTabVarNames, 5);
figTabAvg_table6 = plot_avg(figTab6, figTabVarNames, 6);
figTabAvg_table7 = plot_avg(figTab7, figTabVarNames, 7);
figTabAvg_table8 = plot_avg(figTab8, figTabVarNames, 8);
figTabAvg_table9 = plot_avg(figTab9, figTabVarNames, 9);
figTabAvg_table10 = plot_avg(figTab10, figTabVarNames, 10);
figTabAvg_table11 = plot_avg(figTab11, figTabVarNames, 11);

function figTabAvg = plot_avg(figTab, figTabVarNames, index)
    subplot(6,2,index);
    figTabAvg = bar(table2array(figTab(1,:)),'b');
    xticklabels(figTabVarNames);
    title(sprintf('Srednia arytmetyczna dat%d',index));
end