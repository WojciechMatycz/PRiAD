load fig_tabs.mat
load data_load.mat
%% Wykresy pude³kowe dat2 - dat11 oddzielnie dla kazdej klasy
close all;

subplot(3,2,1);
b1 = box_plot(k1, 1);

subplot(3,2,2);
b2 = box_plot(k2, 2);

subplot(3,2,3);
b3 = box_plot(k3, 3);

subplot(3,2,4);
b4 = box_plot(k4, 4);

subplot(3,2,5);
b5 = box_plot(k5, 5);

subplot(3,2,6);
b6 = box_plot(k6, 6);

function b = box_plot(k, index)
    b = boxplot( [ k(:,2), k(:,3), k(:,4), k(:,5), k(:,6), k(:,7), k(:,8), k(:,9), k(:,10), k(:,11)] );
    title(sprintf('1,3 kwartyl oraz mediana dat2-dat11 Klasy%d', index));
end
