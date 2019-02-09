load fig_tabs.mat
load data_load.mat
%% Hierarchiczna metoda Aglomeracyjna

close all

d = pdist([t_dane(:,3) t_dane(:,10)],'seuclidean'); % odleg�o�c euklidesowa standaryzowana, macierz odleg�o�ci
l = linkage(d,'average');   %wyznaczamy macierz zawieraj�c� kolejno ��czone obiekty i grupy,
                            %uzywamy metody �redniego po�a�zenia
c = cluster(l,'maxclust',6); %Przycinanie dendrogramu, zadaj�c mu liczb� grup = 6
crosstab(c,t.klasa)

figure
subplot(2,1,1);
scatter(t_dane(:,3),t_dane(:,10), 5, t.klasa,'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(:,3),t_dane(:,10), 5, c,'filled');
title('Dane po grupowaniu');