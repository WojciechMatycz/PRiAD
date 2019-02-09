load fig_tabs.mat
%% Odchylenie standardowe
close all;
subplot(6,2,1)
std_p1 = st_dev(figTab1, 1);

subplot(6,2,2)
std_p2 = st_dev(figTab2, 2);

subplot(6,2,3)
std_p3 = st_dev(figTab3, 3);

subplot(6,2,4)
std_p4 = st_dev(figTab4, 4);

subplot(6,2,5)
std_p5 = st_dev(figTab5, 5);

subplot(6,2,6)
std_p6 = st_dev(figTab6, 6);

subplot(6,2,7)
std_p7 = st_dev(figTab7, 7);

subplot(6,2,8)
std_p8 = st_dev(figTab8, 8);

subplot(6,2,9)
std_p9 = st_dev(figTab9, 9);

subplot(6,2,10)
std_p10 = st_dev(figTab10, 10);

subplot(6,2,11)
std_p11 = st_dev(figTab11, 11);

function std_plot = st_dev(figTab, index)
    std_plot = bar(table2array(figTab(9,:)));
    xticklabels(figTabVarNames);
    title(sprintf('Odchylenie standardowe dat%d', index));
end