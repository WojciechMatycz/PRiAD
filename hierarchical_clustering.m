load fig_tabs.mat
load data_load.mat
%% Hierarchiczna metoda Aglomeracyjna

close all

d = pdist([t_dane(:,3) t_dane(:,10)],'seuclidean'); % odleg³oœc euklidesowa standaryzowana, macierz odleg³oœci
l = linkage(d,'average');   %wyznaczamy macierz zawieraj¹c¹ kolejno ³¹czone obiekty i grupy,
                            %uzywamy metody œredniego po³aæzenia
c = cluster(l,'maxclust',6); %Przycinanie dendrogramu, zadaj¹c mu liczbê grup = 6
crosstab(c,t.klasa)

figure
subplot(2,1,1);
scatter(t_dane(:,3),t_dane(:,10), 5, t.klasa,'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(:,3),t_dane(:,10), 5, c,'filled');
title('Dane po grupowaniu');