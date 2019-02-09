load fig_tabs.mat
load data_load.mat
%% Histogramy
close all
for i=1 : 11 
    subplot(6,2,i);
    histogram(t{t.klasa == 1,i});
    hold on
    histogram(t{t.klasa == 2,i});
    histogram(t{t.klasa == 3,i});
    histogram(t{t.klasa == 4,i});
    histogram(t{t.klasa == 5,i});
    histogram(t{t.klasa == 6,i});
    hold off
    tyt = "Histogram dat" + i;
    title(tyt);
end