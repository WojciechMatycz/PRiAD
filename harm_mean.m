load fig_tabs.mat
%% %Srednia harmoniczna

% �rednia harmoniczna dla dat1
figTabHarm1 = plot_harm_avg(figTab1, figTabVarNames, 1);

% �rednia harmoniczna dla dat2
figTabHarm2 = plot_harm_avg(figTab2, figTabVarNames, 2);

% �rednia harmoniczna dla dat3
figTabHarm3 = plot_harm_avg(figTab3, figTabVarNames, 3);

% �rednia harmoniczna dla dat4
figTabHarm4 = plot_harm_avg(figTab4, figTabVarNames, 4);

% �rednia harmoniczna dla dat5
figTabHarm5 = plot_harm_avg(figTab5, figTabVarNames, 5);

% �rednia harmoniczna dla dat6
figTabHarm6 = plot_harm_avg(figTab6, figTabVarNames, 6);

% �rednia harmoniczna dla dat7
figTabHarm7 = plot_harm_avg(figTab7, figTabVarNames, 7);

% �rednia harmoniczna dla dat8
figTabHarm8 = plot_harm_avg(figTab8, figTabVarNames, 8);

% �rednia harmoniczna dla dat9
figTabHarm9 = plot_harm_avg(figTab9, figTabVarNames, 9);

% �rednia harmoniczna dla dat10
figTabHarm10 = plot_harm_avg(figTab10, figTabVarNames, 10);

% �rednia harmoniczna dla dat11
figTabHarm11 = plot_harm_avg(figTab11, figTabVarNames, 11);

function figTabHarmAvg = plot_harm_avg(figTab, figTabVarNames, index)
    subplot(6,2,index);
    figTabHarmAvg = bar(table2array(figTab(3,:)),'y');
    xticklabels(figTabVarNames);
    title(sprintf('Srednia harmoniczna dat%d',index));
end