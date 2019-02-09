load fig_tabs.mat
load data_load.mat
%% Macierz wykresów punktowych - pomaga w wybraniu argumentów do grupowania
close all
gplotmatrix(t{:,1:11},[],t.klasa);