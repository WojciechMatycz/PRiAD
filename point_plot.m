load fig_tabs.mat
load data_load.mat
%% Macierz wykres�w punktowych - pomaga w wybraniu argument�w do grupowania
close all
gplotmatrix(t{:,1:11},[],t.klasa);