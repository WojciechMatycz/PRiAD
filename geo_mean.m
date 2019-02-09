load fig_tabs.mat
%% %Srednia geometryczna 
close all;

%Brak œrednich geomterycznych dla dat1, dat7,8,9

% œrednia geometryczna dla dat2
subplot(4,2,1);
figTabGeo2 = plot_geo_avg(figTab2, figTabVarNames, 2);

% œrednia geometryczna dla dat3
subplot(4,2,2);
figTabGeo3 = plot_geo_avg(figTab3, figTabVarNames, 3);

% œrednia geometryczna dla dat4
subplot(4,2,3);
figTabGeo4 = plot_geo_avg(figTab4, figTabVarNames, 4);

% œrednia geometryczna dla dat5
subplot(4,2,4);
figTabGeo5 = plot_geo_avg(figTab5, figTabVarNames, 5);

% œrednia geometryczna dla dat6
subplot(4,2,5);
figTabGeo6 = plot_geo_avg(figTab6, figTabVarNames, 6);

% œrednia geometryczna dla dat10
subplot(4,2,6);
figTabGeo10 = plot_geo_avg(figTab10, figTabVarNames, 10);

% œrednia geometryczna dla dat11
subplot(4,2,7);
figTabGeo11 = plot_geo_avg(figTab11, figTabVarNames, 11);

function figTabGeoAvg = plot_geo_avg(figTab, figTabVarNames, index)
    figTabGeoAvg = bar(table2array(figTab(2,:)),'r');
    xticklabels(figTabVarNames);
    title(sprintf('Srednia geometryczna dat%d',index));
end