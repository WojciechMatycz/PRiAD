load fig_tabs.mat
load data_load.mat
%% Klasyfikacja k-najbli¿szych s¹siadów

close all

    for k=1:2:15
        tab1 = zeros(6,6);
        tab2 = zeros(6,6);
        for i=1: 200
          c = cvpartition(t.klasa,'HoldOut',0.3);

          kl = fitcknn([t_dane(c.training,3) t_dane(c.training,10)] ,t{c.training,12},'NumNeighbors',k);
          wynik1 = kl.predict([t_dane(c.training,3) t_dane(c.training,10)]);
          tab1 = tab1 + crosstab(t{c.training,12},wynik1);
          wynik2 = kl.predict([t_dane(c.test,3) t_dane(c.test,10)]);
          tab2 = tab2 + crosstab(t{c.test,12},wynik2);
        end
        strcat(num2str(k),'-NN')
        tab_krzyz_zbU = tab1/200;
        tab_krzyz_zbT = tab2/200;
        l_elem1 = sum(sum(tab_krzyz_zbU));
        l_elem2 = sum(sum(tab_krzyz_zbT));

        blad1 = l_elem1 - sum(diag(tab_krzyz_zbU));
        blad2 = l_elem2 - sum(diag(tab_krzyz_zbT));

        blad1_Proc = blad1/l_elem1 * 100;
        blad2_Proc = blad2/l_elem2 * 100;

        disp("Liczba elementów zbioru ucz¹cego: " + l_elem1 + ",œredni b³¹d: " + blad1_Proc + "%");
        disp("Liczba elementów zbioru testowego: " + l_elem2 + ",œredni b³¹d: " + blad2_Proc + "%");
    end
    figure
subplot(2,1,1);
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, t{c.test,12},'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, wynik2,'filled');
title('Dane po klasyfikacji');