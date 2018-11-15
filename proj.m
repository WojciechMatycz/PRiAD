%%
format longG
load projekt13.mat
load tab1.mat

nObiektow = height(t);  %Ilosc obiektow
nKlas = height(unique(t(:,12)));   %Ilosc klas

% t = sortrows(t,1:11); %posortowanie tablicy t
tab1 = zeros(13,11);         %tabela klasy1
tab2 = zeros(13,11);         %tabela klasy2
tab3 = zeros(13,11);         %tabela klasy3
tab4 = zeros(13,11);
tab5 = zeros(13,11);
tab6 = zeros(13,11);
rowNames = { 'Srednia arytmetyczna', 'Srednia geometryczna', 'Srednia harmoniczna',...
    'Mediana', 'Moda', 'Max', 'Min', 'Zakres', 'Odchylenie standardowe', 'Wariancja', 'Pierwszy kwartyl',...
    'Trzeci kwartyl', 'Odst?p mi?dzykwartylowy' };
columnNames = t.Properties.VariableNames;

t_dane = (t{:,1:11}); %macierz tylko z danymi od dat1 do dat11

k1 = t{t.klasa == 1,1:11}; % Klasa 1
k2 = t{t.klasa == 2,1:11}; % Klasa 2
k3 = t{t.klasa == 3,1:11}; % Klasa 3
k4 = t{t.klasa == 4,1:11}; % Klasa 4
k5 = t{t.klasa == 5,1:11}; % Klasa 5
k6 = t{t.klasa == 6,1:11}; % Klasa 6

    tab1(1,:) = mean(k1);                %Srednie arytmetyczne
    tab1(2,:) = geomean(max(k1,0));        %Srednie geometryczne  
    tab1(3,:) = harmmean(k1);            %Srednie harmoniczne 
    tab1(4,:) = median(k1);              %Mediany klas
    tab1(5,:) = mode(k1);                %Moda
    tab1(6,:) = max(k1);                 %Max klas 
    tab1(7,:) = min(k1);                 %Min klas
    tab1(8,:) = tab1(6,:) - tab1(7,:);   %Zakres
    tab1(9,:) = std(k1);                 %Odchylenie standardowe klas
    tab1(10,:) = var(k1);                %Wariancja klas
    tab1(11,:) = quantile(k1,.25);       %Pierwszy Kwartyl
    tab1(12,:) = quantile(k1,.75);       %Trzeci Kwartyl
    tab1(13,:) = tab1(12,:)-tab1(11,:);   %Odstêp miêdzykwartylowy
    
    tab1 = array2table(tab1);
    tab1.Properties.RowNames = rowNames;
    tab1.Properties.VariableNames = columnNames(1,1:11);
    save('tab1.mat','tab1');
    
    tab2(1,:) = mean(k2);                %Srednie arytmetyczne
    tab2(2,:) = geomean(max(k2,0));        %Srednie geometryczne  
    tab2(3,:) = harmmean(k2);            %Srednie harmoniczne 
    tab2(4,:) = median(k2);              %Mediany klas
    tab2(5,:) = mode(k2);                %Moda
    tab2(6,:) = max(k2);                 %Max klas 
    tab2(7,:) = min(k2);                 %Min klas
    tab2(8,:) = tab2(6,:) - tab2(7,:);   %Zakres
    tab2(9,:) = std(k2);                 %Odchylenie standardowe klas
    tab2(10,:) = var(k2);                %Wariancja klas
    tab2(11,:) = quantile(k2,.25);       %Pierwszy Kwartyl
    tab2(12,:) = quantile(k2,.75);       %Trzeci Kwartyl
    tab2(13,:) = tab2(12,:)-tab2(11,:);   %Odstêp miêdzykwartylowy
    
    tab2 = array2table(tab2);
    tab2.Properties.RowNames = rowNames;
    tab2.Properties.VariableNames = columnNames(1,1:11);
    save('tab2.mat','tab2');
    
    tab3(1,:) = mean(k3);                %Srednie arytmetyczne
    tab3(2,:) = geomean(max(k3,0));        %Srednie geometryczne  
    tab3(3,:) = harmmean(k3);            %Srednie harmoniczne 
    tab3(4,:) = median(k3);              %Mediany klas
    tab3(5,:) = mode(k3);                %Moda
    tab3(6,:) = max(k3);                 %Max klas 
    tab3(7,:) = min(k3);                 %Min klas
    tab3(8,:) = tab3(6,:) - tab3(7,:);   %Zakres
    tab3(9,:) = std(k3);                 %Odchylenie standardowe klas
    tab3(10,:) = var(k3);                %Wariancja klas
    tab3(11,:) = quantile(k3,.25);       %Pierwszy Kwartyl
    tab3(12,:) = quantile(k3,.75);       %Trzeci Kwartyl
    tab3(13,:) = tab3(12,:)-tab3(11,:);   %Odstêp miêdzykwartylowy
    
    tab3 = array2table(tab3);
    tab3.Properties.RowNames = rowNames;
    tab3.Properties.VariableNames = columnNames(1,1:11);
    save('tab3.mat','tab3');
    
    tab4(1,:) = mean(k4);                %Srednie arytmetyczne
    tab4(2,:) = geomean(max(k4,0));        %Srednie geometryczne  
    tab4(3,:) = harmmean(k4);            %Srednie harmoniczne 
    tab4(4,:) = median(k4);              %Mediany klas
    tab4(5,:) = mode(k4);                %Moda
    tab4(6,:) = max(k4);                 %Max klas 
    tab4(7,:) = min(k4);                 %Min klas
    tab4(8,:) = tab4(6,:) - tab4(7,:);   %Zakres
    tab4(9,:) = std(k4);                 %Odchylenie standardowe klas
    tab4(10,:) = var(k4);                %Wariancja klas
    tab4(11,:) = quantile(k4,.25);       %Pierwszy Kwartyl
    tab4(12,:) = quantile(k4,.75);       %Trzeci Kwartyl
    tab4(13,:) = tab4(12,:)-tab4(11,:);   %Odstêp miêdzykwartylowy
    
    tab4 = array2table(tab4);
    tab4.Properties.RowNames = rowNames;
    tab4.Properties.VariableNames = columnNames(1,1:11);
    save('tab4.mat','tab4');
    
    tab5(1,:) = mean(k5);                %Srednie arytmetyczne
    tab5(2,:) = geomean(max(k5,0));        %Srednie geometryczne  
    tab5(3,:) = harmmean(k5);            %Srednie harmoniczne 
    tab5(4,:) = median(k5);              %Mediany klas
    tab5(5,:) = mode(k5);                %Moda
    tab5(6,:) = max(k5);                 %Max klas 
    tab5(7,:) = min(k5);                 %Min klas
    tab5(8,:) = tab5(6,:) - tab5(7,:);   %Zakres
    tab5(9,:) = std(k5);                 %Odchylenie standardowe klas
    tab5(10,:) = var(k5);                %Wariancja klas
    tab5(11,:) = quantile(k5,.25);       %Pierwszy Kwartyl
    tab5(12,:) = quantile(k5,.75);       %Trzeci Kwartyl
    tab5(13,:) = tab5(12,:)-tab5(11,:);   %Odstêp miêdzykwartylowy

    tab5 = array2table(tab5);
    tab5.Properties.RowNames = rowNames;
    tab5.Properties.VariableNames = columnNames(1,1:11);
    save('tab5.mat','tab5');
    
    tab6(1,:) = mean(k6);                %Srednie arytmetyczne
    tab6(2,:) = geomean(max(k6,0));        %Srednie geometryczne  
    tab6(3,:) = harmmean(k6);            %Srednie harmoniczne 
    tab6(4,:) = median(k6);              %Mediany klas
    tab6(5,:) = mode(k6);                %Moda
    tab6(6,:) = max(k6);                 %Max klas 
    tab6(7,:) = min(k6);                 %Min klas
    tab6(8,:) = tab6(6,:) - tab6(7,:);   %Zakres
    tab6(9,:) = std(k6);                 %Odchylenie standardowe klas
    tab6(10,:) = var(k6);                %Wariancja klas
    tab6(11,:) = quantile(k6,.25);       %Pierwszy Kwartyl
    tab6(12,:) = quantile(k6,.75);       %Trzeci Kwartyl
    tab6(13,:) = tab6(12,:)-tab6(11,:);   %Odstêp miêdzykwartylowy
    
    tab6 = array2table(tab6);
    tab6.Properties.RowNames = rowNames;
    tab6.Properties.VariableNames = columnNames(1,1:11);
    save('tab6.mat','tab6');

% writetable(tab1, 'tab1.xls','WriteRowNames', true);
% writetable(tab2, 'tab2.xls','WriteRowNames', true);
% writetable(tab3, 'tab3.xls','WriteRowNames', true);
% writetable(tab4, 'tab4.xls','WriteRowNames', true);
% writetable(tab5, 'tab5.xls','WriteRowNames', true);
% writetable(tab6, 'tab6.xls','WriteRowNames', true);


%% Tabele z podstawowymi parametrami zbioru danych(wiersze) oraz atrybutami opisuj¹cymi(kolumny)

figTabVarNames = { 'Klasa_1' 'Klasa_2' 'Klasa_3' 'Klasa_4' 'Klasa_5' 'Klasa_6' };
%Dat1
figTab1(:,1) = tab1(:,1);
figTab1(:,2) = tab2(:,1);
figTab1(:,3) = tab3(:,1);
figTab1(:,4) = tab4(:,1);
figTab1(:,5) = tab5(:,1);
figTab1(:,6) = tab6(:,1);
figTab1.Properties.VariableNames = figTabVarNames;

%Dat2
figTab2(:,1) = tab1(:,2);
figTab2(:,2) = tab2(:,2);
figTab2(:,3) = tab3(:,2);
figTab2(:,4) = tab4(:,2);
figTab2(:,5) = tab5(:,2);
figTab2(:,6) = tab6(:,2);
figTab2.Properties.VariableNames = figTabVarNames;

%Dat3
figTab3(:,1) = tab1(:,3);
figTab3(:,2) = tab2(:,3);
figTab3(:,3) = tab3(:,3);
figTab3(:,4) = tab4(:,3);
figTab3(:,5) = tab5(:,3);
figTab3(:,6) = tab6(:,3);
figTab3.Properties.VariableNames = figTabVarNames;

%Dat4
figTab4(:,1) = tab1(:,4);
figTab4(:,2) = tab2(:,4);
figTab4(:,3) = tab3(:,4);
figTab4(:,4) = tab4(:,4);
figTab4(:,5) = tab5(:,4);
figTab4(:,6) = tab6(:,4);
figTab4.Properties.VariableNames = figTabVarNames;

%Dat5
figTab5(:,1) = tab1(:,5);
figTab5(:,2) = tab2(:,5);
figTab5(:,3) = tab3(:,5);
figTab5(:,4) = tab4(:,5);
figTab5(:,5) = tab5(:,5);
figTab5(:,6) = tab6(:,5);
figTab5.Properties.VariableNames = figTabVarNames;

%Dat6
figTab6(:,1) = tab1(:,6);
figTab6(:,2) = tab2(:,6);
figTab6(:,3) = tab3(:,6);
figTab6(:,4) = tab4(:,6);
figTab6(:,5) = tab5(:,6);
figTab6(:,6) = tab6(:,6);
figTab6.Properties.VariableNames = figTabVarNames;

%Dat7
figTab7(:,1) = tab1(:,7);
figTab7(:,2) = tab2(:,7);
figTab7(:,3) = tab3(:,7);
figTab7(:,4) = tab4(:,7);
figTab7(:,5) = tab5(:,7);
figTab7(:,6) = tab6(:,7);
figTab7.Properties.VariableNames = figTabVarNames;

%Dat8
figTab8(:,1) = tab1(:,8);
figTab8(:,2) = tab2(:,8);
figTab8(:,3) = tab3(:,8);
figTab8(:,4) = tab4(:,8);
figTab8(:,5) = tab5(:,8);
figTab8(:,6) = tab6(:,8);
figTab8.Properties.VariableNames = figTabVarNames;

%Dat9
figTab9(:,1) = tab1(:,9);
figTab9(:,2) = tab2(:,9);
figTab9(:,3) = tab3(:,9);
figTab9(:,4) = tab4(:,9);
figTab9(:,5) = tab5(:,9);
figTab9(:,6) = tab6(:,9);
figTab9.Properties.VariableNames = figTabVarNames;

%Dat10
figTab10(:,1) = tab1(:,10);
figTab10(:,2) = tab2(:,10);
figTab10(:,3) = tab3(:,10);
figTab10(:,4) = tab4(:,10);
figTab10(:,5) = tab5(:,10);
figTab10(:,6) = tab6(:,10);
figTab10.Properties.VariableNames = figTabVarNames;

%Dat11
figTab11(:,1) = tab1(:,11);
figTab11(:,2) = tab2(:,11);
figTab11(:,3) = tab3(:,11);
figTab11(:,4) = tab4(:,11);
figTab11(:,5) = tab5(:,11);
figTab11(:,6) = tab6(:,11);
figTab11.Properties.VariableNames = figTabVarNames;

%% Ilosc elementów w poszczególnych klasach - wykres ko³owy i s³upkowy
liczKlas = [ length(k1), length(k2), length(k3), length(k4), length(k5), length(k6) ]; %licznosc klas

figure
bar(liczKlas);
xticklabels(figTabVarNames);
title('Ilosc obiektow w poszczególnych klasach');

figure
pie(liczKlas);
title('Procentowa ilosc obiektow w poszczególnych klasach');
legend(figTabVarNames);

% iloscTab = table(length(k1), length(k2), length(k3), length(k4), length(k5), length(k6));
% iloscTab.Properties.RowNames = {'Ilosc'};
% iloscTab.Properties.VariableNames = figTabVarNames;
% writetable(iloscTab,'liczebnoscTab.xls');

%% %Wykresy %Srednia arytmetyczna 
close all;
% œrednia arytmetyczna dla dat1
subplot(6,2,1);
figTabAvg1 = bar(table2array(figTab1(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat1');

% œrednia arytmetyczna dla dat2
subplot(6,2,2);
figTabAvg2 = bar(table2array(figTab2(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat2');

% œrednia arytmetyczna dla dat3
subplot(6,2,3);
figTabAvg3 = bar(table2array(figTab3(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat3');

% œrednia arytmetyczna dla dat4
subplot(6,2,4);
figTabAvg4 = bar(table2array(figTab4(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat4');

% œrednia arytmetyczna dla dat5
subplot(6,2,5);
figTabAvg5 = bar(table2array(figTab5(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat5');

% œrednia arytmetyczna dla dat6
subplot(6,2,6);
figTabAvg6 = bar(table2array(figTab6(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat6');

% œrednia arytmetyczna dla dat7
subplot(6,2,7);
figTabAvg7 = bar(table2array(figTab7(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat7');

% œrednia arytmetyczna dla dat8
subplot(6,2,8);
figTabAvg8 = bar(table2array(figTab8(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat8');

% œrednia arytmetyczna dla dat9
subplot(6,2,9);
figTabAvg9 = bar(table2array(figTab9(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat9');

% œrednia arytmetyczna dla dat10
subplot(6,2,10);
figTabAvg10 = bar(table2array(figTab10(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat10');

% œrednia arytmetyczna dla dat11
subplot(6,2,11);
figTabAvg11 = bar(table2array(figTab11(1,:)),'b');
xticklabels(figTabVarNames);
title('Srednia arytmetyczna dat11');

%% %Srednia geometryczna 
close all;

%Brak œrednich geomterycznych dla dat1, dat7,8,9

% œrednia geometryczna dla dat2
subplot(4,2,1);
figTabGeo2 = bar(table2array(figTab2(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat2');

% œrednia geometryczna dla dat3
subplot(4,2,2);
figTabGeo3 = bar(table2array(figTab3(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat3');

% œrednia geometryczna dla dat4
subplot(4,2,3);
figTabGeo4 = bar(table2array(figTab4(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat4');

% œrednia geometryczna dla dat5
subplot(4,2,4);
figTabGeo5 = bar(table2array(figTab5(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat5');

% œrednia geometryczna dla dat6
subplot(4,2,5);
figTabGeo6 = bar(table2array(figTab6(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat6');

% œrednia geometryczna dla dat10
subplot(4,2,6);
figTabGeo10 = bar(table2array(figTab10(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat10');

% œrednia geometryczna dla dat11
subplot(4,2,7);
figTabGeo11 = bar(table2array(figTab11(2,:)),'r');
xticklabels(figTabVarNames);
title('Srednia geometryczna dat11');

%% %Srednia harmoniczna

% œrednia harmoniczna dla dat1
subplot(6,2,1);
figTabHarm1 = bar(table2array(figTab1(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat1');

% œrednia harmoniczna dla dat2
subplot(6,2,2);
figTabHarm2 = bar(table2array(figTab2(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat2');

% œrednia harmoniczna dla dat3
subplot(6,2,3);
figTabHarm3 = bar(table2array(figTab3(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat3');

% œrednia harmoniczna dla dat4
subplot(6,2,4);
figTabHarm4 = bar(table2array(figTab4(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat4');

% œrednia harmoniczna dla dat5
subplot(6,2,5);
figTabHarm5 = bar(table2array(figTab5(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat5');

% œrednia harmoniczna dla dat6
subplot(6,2,6);
figTabHarm6 = bar(table2array(figTab6(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat6');

% œrednia harmoniczna dla dat7
subplot(6,2,7);
figTabHarm7 = bar(table2array(figTab7(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat7');

% œrednia harmoniczna dla dat8
subplot(6,2,8);
figTabHarm8 = bar(table2array(figTab8(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat8');

% œrednia harmoniczna dla dat9
subplot(6,2,9);
figTabHarm9 = bar(table2array(figTab9(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat9');

% œrednia harmoniczna dla dat10
subplot(6,2,10);
figTabHarm10 = bar(table2array(figTab10(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat10');

% œrednia harmoniczna dla dat11
subplot(6,2,11);
figTabHarm11 = bar(table2array(figTab11(3,:)),'y');
xticklabels(figTabVarNames);
title('Srednia harmoniczna dat11');


%% % Kwartyle, mediana - wykresy pude³kowe
for i = 1:11

%Wykres pude³kowy dla Klasy 1
figure
subplot(3,2,1);
boxplot(k1(:,i));
xticklabels('Klasa_1');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

%Wykres pude³kowy dla Klasy 2
subplot(3,2,2);
boxplot(k2(:,i));
xticklabels('Klasa_2');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

%Wykres pude³kowy dla Klasy 3
subplot(3,2,3);
boxplot(k3(:,i));
xticklabels('Klasa_3');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

%Wykres pude³kowy dla Klasy 4
subplot(3,2,4);
boxplot(k4(:,i));
xticklabels('Klasa_4');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

%Wykres pude³kowy dla Klasy 5
subplot(3,2,5);
boxplot(k5(:,i));
xticklabels('Klasa_5');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

%Wykres pude³kowy dla Klasy 6
subplot(3,2,6);
boxplot(k6(:,i));
xticklabels('Klasa_6');
title(strcat('1,3 kwartyl oraz mediana dat', int2str(i)));

end
%% Odchylenie standardowe
close all;
subplot(6,2,1)
bar(table2array(figTab1(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat1');

subplot(6,2,2)
bar(table2array(figTab2(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat2');

subplot(6,2,3)
bar(table2array(figTab3(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat3');

subplot(6,2,4)
bar(table2array(figTab4(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat4');

subplot(6,2,5)
bar(table2array(figTab5(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat5');

subplot(6,2,6)
bar(table2array(figTab6(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat6');

subplot(6,2,7)
bar(table2array(figTab7(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat7');

subplot(6,2,8)
bar(table2array(figTab8(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat8');

subplot(6,2,9)
bar(table2array(figTab9(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat9');

subplot(6,2,10)
bar(table2array(figTab10(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat10');

subplot(6,2,11)
bar(table2array(figTab11(9,:)));
xticklabels(figTabVarNames);
title('Odchylenie standardowe dat11');

%% Wariancja
close all;
subplot(6,2,1)
bar(table2array(figTab1(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat1');

subplot(6,2,2)
bar(table2array(figTab2(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat2');

subplot(6,2,3)
bar(table2array(figTab3(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat3');

subplot(6,2,4)
bar(table2array(figTab4(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat4');

subplot(6,2,5)
bar(table2array(figTab5(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat5');

subplot(6,2,6)
bar(table2array(figTab6(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat6');

subplot(6,2,7)
bar(table2array(figTab7(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat7');

subplot(6,2,8)
bar(table2array(figTab8(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat8');

subplot(6,2,9)
bar(table2array(figTab9(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat9');

subplot(6,2,10)
bar(table2array(figTab10(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat10');

subplot(6,2,11)
bar(table2array(figTab11(10,:)));
xticklabels(figTabVarNames);
title('Wariancja dat11');

%% Wykresy min, max 

figure
bar(table2array(figTab1(6,:)),'b');
hold on
bar(table2array(figTab1(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat1');

figure
subplot(5,2,1);
bar(table2array(figTab2(6,:)),'b');
hold on
bar(table2array(figTab2(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat2');

subplot(5,2,2);
bar(table2array(figTab3(6,:)),'b');
hold on
bar(table2array(figTab3(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat3');

subplot(5,2,3);
bar(table2array(figTab4(6,:)),'b');
hold on
bar(table2array(figTab4(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat4');

subplot(5,2,4);
bar(table2array(figTab5(6,:)),'b');
hold on
bar(table2array(figTab5(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat5');

subplot(5,2,5);
bar(table2array(figTab6(6,:)),'b');
hold on
bar(table2array(figTab6(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat6');

subplot(5,2,6);
bar(table2array(figTab7(6,:)),'b');
hold on
bar(table2array(figTab7(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat7');

subplot(5,2,7);
bar(table2array(figTab8(6,:)),'b');
hold on
bar(table2array(figTab8(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat8');

subplot(5,2,8);
bar(table2array(figTab9(6,:)),'b');
hold on
bar(table2array(figTab9(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat9');

subplot(5,2,9);
bar(table2array(figTab10(6,:)),'b');
hold on
bar(table2array(figTab10(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat10');

subplot(5,2,10);
bar(table2array(figTab11(6,:)),'b');
hold on
bar(table2array(figTab11(7,:)),'r');
xticklabels(figTabVarNames);
legend('Max','Min');
title('Min i max dla dat11');


%% Wykresy pude³kowe dat2 - dat11 oddzielnie dla kazdej klasy
close all;

subplot(3,2,1);
boxplot( [ k1(:,2), k1(:,3), k1(:,4), k1(:,5), k1(:,6), k1(:,7), k1(:,8), k1(:,9), k1(:,10), k1(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy1');

subplot(3,2,2);
boxplot( [ k2(:,2), k2(:,3), k2(:,4), k2(:,5), k2(:,6), k2(:,7), k2(:,8), k2(:,9), k2(:,10), k2(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy2');

subplot(3,2,3);
boxplot( [ k3(:,2), k3(:,3), k3(:,4), k3(:,5), k3(:,6), k3(:,7), k3(:,8), k3(:,9), k3(:,10), k3(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy3');

subplot(3,2,4);
boxplot( [ k4(:,2), k4(:,3), k4(:,4), k4(:,5), k4(:,6), k4(:,7), k4(:,8), k4(:,9), k4(:,10), k4(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy4');

subplot(3,2,5);
boxplot( [ k5(:,2), k5(:,3), k5(:,4), k5(:,5), k5(:,6), k5(:,7), k5(:,8), k5(:,9), k5(:,10), k5(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy5');

subplot(3,2,6);
boxplot( [ k6(:,2), k6(:,3), k6(:,4), k6(:,5), k6(:,6), k6(:,7), k6(:,8), k6(:,9), k6(:,10), k6(:,11)] );
title('1,3 kwartyl oraz mediana dat2-dat11 Klasy6');


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
%% Normalizacja min-max i standaryzacja; stadnkX oraz resultStandkX daja takie same wyniki
close all
    

normk1 = calc_minMax_Stand(k1);
normk2 = calc_minMax_Stand(k2);
normk3 = calc_minMax_Stand(k3);
normk4 = calc_minMax_Stand(k4);
normk5 = calc_minMax_Stand(k5);
normk6 = calc_minMax_Stand(k6);

o = length(k2);
normk2 = (k2 - ones(o,1)*min(k2))./(ones(o,1)*(max(k2)-min(k2)));   %normalizacja min-max
standk2 = (k2 - ones(o,1)*mean(k2))./(ones(o,1)*std(k2));               %standaryzacja
resultStandk2 = zscore(k2);     %funkcja realizujaca standaryzacje

o = length(k3);
normk3 = (k3 - ones(o,1)*min(k3))./(ones(o,1)*(max(k3)-min(k3)));   %normalizacja min-max
standk3 = (k3 - ones(o,1)*mean(k3))./(ones(o,1)*std(k3));               %standaryzacja
resultStandk3 = zscore(k3);     %funkcja realizujaca standaryzacje

o = length(k4);
normk4 = (k4 - ones(o,1)*min(k4))./(ones(o,1)*(max(k4)-min(k4)));   %normalizacja min-max
standk4 = (k4 - ones(o,1)*mean(k4))./(ones(o,1)*std(k4));               %standaryzacja
resultStandk4 = zscore(k4);     %funkcja realizujaca standaryzacje

o = length(k5);
normk5 = (k5 - ones(o,1)*min(k5))./(ones(o,1)*(max(k5)-min(k5)));   %normalizacja min-max
standk5 = (k5 - ones(o,1)*mean(k5))./(ones(o,1)*std(k5));               %standaryzacja
resultStandk5 = zscore(k5);     %funkcja realizujaca standaryzacje

o = length(k6);
normk6 = (k6 - ones(o,1)*min(k6))./(ones(o,1)*(max(k6)-min(k6)));   %normalizacja min-max
standk6 = (k6 - ones(o,1)*mean(k6))./(ones(o,1)*std(k6));               %standaryzacja
resultStandk6 = zscore(k6);     %funkcja realizujaca standaryzacje

%%  Kowariancja (cov) oraz korelacja (corr) 
format
datNames = { 'dat1' 'dat2' 'dat3' 'dat4' 'dat5' 'dat6' 'dat7' 'dat8' 'dat9' 'dat10' 'dat11' };
corrk6 = corr(t_dane(:,1:11));
corrk6 = array2table(corrk6);
corrk6.Properties.RowNames = datNames;
corrk6.Properties.VariableNames = datNames;
% writetable(corrk6, 'corrk6.xls','WriteRowNames', true);

%% Macierz wykresów punktowych - pomaga w wybraniu argumentów do grupowania
close all
gplotmatrix(t{:,1:11},[],t.klasa);

%% Grupowanie k-œrednich Rafonix robi³ wiec ja nie wiem co tu

close all

%Standaryzujemy zmienne bo dat1 odbiega znacznie od innych
t_dane = zscore(t{:,1:11}); %wydzielamy same dane z pocz¹tkowej tabeli i poddajemy standaryzacji
%Wykonujemy grupowanie dla rosn¹cej liczby grup i obliczamy jak zmienia siê
%srednia odleg³oœæ wzglêdem centroidu

for i=1:15
  subplot(3,5,i)                %Do rysowania kolejnych iteracji
  [kl, ~, so] = kmeans([t_dane(:,3) t_dane(:,10)],i,'Replicates',15);
  scatter(t_dane(:,3),t_dane(:,10),2,kl);   %kolejne iteracje
  odl(i) = sum(so)/size(t_dane,1);  %Œrednia odleg³oœæ od centroiów dla iteracji
  if (i>1) 
      dif(i-1) = abs((odl(i-1) - odl(i))/odl(i-1) - 0.1); %Wzglêda zmiana odleg³oœci od centroidu dla kolejnych iteracji
  end
end
figure;
plot(odl)
suggestedClassAmount = find(dif == min(dif), 1, 'last' );   %Sugerowana liczba klas, ale lepiej kierowaæ siê wykresami

%W³aœciwe grupowanie metod¹ k-œrednich
kl = kmeans([t_dane(:,3) t_dane(:,10)]...
     ,6,'Start','sample','Replicates',15);

figure;
subplot(2,1,1);
scatter(t_dane(:,3),t_dane(:,10), 5, t.klasa,'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(:,3),t_dane(:,10),5,kl, 'filled');
title('Dane po grupowaniu');
crosstab(kl,t.klasa)

figure; gplotmatrix(t{:,1:11},[],t.klasa)
figure; gplotmatrix(t{:,1:11},[],kl)

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

%% Uczenie nadzorowane

close all

%Klasyfikator najbli¿szych s¹siadów
tab1 = zeros(6,6);
tab2 = zeros(6,6);
for i=1: 200
    % podzia³ na zbiór ucz¹cy i testowy
    c = cvpartition(t.klasa,'HoldOut',0.3);
    t_dane(c.test,:); % zbiór testowy
    t_dane(c.training,:); % zbiór ucz¹cy

    % zdefiniowanie modelu klasyfikacji
    kl = fitcknn([t_dane(c.training,3) t_dane(c.training,10)] ,t{c.training,12},'NumNeighbors',1);

    % wynik klasyfikacji dla zbioru ucz¹cego
    wynik1 = kl.predict([t_dane(c.training,3) t_dane(c.training,10)]);
    tab1 = tab1 + crosstab(t{c.training,12},wynik1);
    % wynik klasyfikacji dla zbioru testowego
    wynik2 = kl.predict([t_dane(c.test,3) t_dane(c.test,10)]);
    tab2 = tab2 + crosstab(t{c.test,12},wynik2);
end

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

figure
subplot(2,1,1);
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, t{c.test,12},'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(c.test,3), t_dane(c.test,10),5,wynik2,'filled');
title('Dane po klasyfikacji');
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
 
 %% Metoda najbli¿szych prototypów

 close all
 
 tab1 = zeros(6,6);
 tab2 = zeros(6,6);
 
 %Do³¹czamy klasy na koniec
    t_dane = [t_dane t{:,12}];   
 
 for j=1: 200
    c = cvpartition(t.klasa,'HoldOut',0.3);

    %Liczymy œrednie
    for i=1:6
        pro_c(i,:) = mean([t_dane(t_dane(:,12) == i,3) t_dane(t_dane(:,12) == i,10)]);
    end
    pro = [pro_c(:,1) pro_c(:,2) unique(t{:,12})];

    kl = fitcknn(pro(:,1:2),pro(:,3),'NumNeighbors',1);

    wynik1 = kl.predict([t_dane(c.training,3) t_dane(c.training,10)]);
    tab1 = tab1 + crosstab(t{c.training,12},wynik1);

    wynik2 = kl.predict([t_dane(c.test,3) t_dane(c.test,10)]);
    tab2 = tab2 + crosstab(t{c.test,12},wynik2);
 end
tab_krzyz_zbU = tab1/200;
tab_krzyz_zbT = tab2/200

l_elem1 = sum(sum(tab_krzyz_zbU));
l_elem2 = sum(sum(tab_krzyz_zbT));

blad1 = l_elem1 - sum(diag(tab_krzyz_zbU));
blad2 = l_elem2 - sum(diag(tab_krzyz_zbT));

blad1_Proc = blad1/l_elem1 * 100;
blad2_Proc = blad2/l_elem2 * 100;

disp("Liczba elementów zbioru ucz¹cego: " + l_elem1 + ",œredni b³¹d: " + blad1_Proc + "%");
disp("Liczba elementów zbioru testowego: " + l_elem2 + ",œredni b³¹d: " + blad2_Proc + "%");
 
figure
subplot(2,1,1);
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, t{c.test,12},'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, wynik2,'filled');
title('Dane po klasyfikacji');

%% Klasyfikator Bayesa

close all

tab1 = zeros(6,6);
tab2 = zeros(6,6);
for i=1: 200
    c = cvpartition(t.klasa,'HoldOut',0.3);

    kl = fitcnb([t_dane(c.training,3) t_dane(c.training,10)], t_dane(c.training,12));

    wynik1 = kl.predict([t_dane(c.training,3) t_dane(c.training,10)]);
    tab1 = tab1 + crosstab(t_dane(c.training,12),wynik1);      %dodajemy do siebie wszystkie tabele krzy¿owe

    wynik2 = kl.predict([t_dane(c.test,3) t_dane(c.test,10)]);
    tab2 = tab2 + crosstab(t_dane(c.test,12),wynik2);  %dodajemy do siebie wszystkie tabele krzy¿owe
end
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

figure
subplot(2,1,1);
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, t{c.test,12},'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, wynik2,'filled');
title('Dane po klasyfikacji');
%% Drzewo decyzyjne

close all

tab1 = zeros(6,6);
tab2 = zeros(6,6);
for i=1:200
    c = cvpartition(t.klasa,'HoldOut',0.3);

    kl = fitctree([t_dane(c.training,3) t_dane(c.training,10)], t_dane(c.training,12));

    wynik1 = kl.predict([t_dane(c.training,3) t_dane(c.training,10)]);
    tab1 = tab1 + crosstab(t_dane(c.training,12),wynik1);     %dodajemy do siebie wszystkie tabele krzy¿owe

    wynik2 = kl.predict([t_dane(c.test,3) t_dane(c.test,10)]);
    tab2 = tab2 + crosstab(t_dane(c.test,12),wynik2);  %dodajemy do siebie wszystkie tabele krzy¿owe
end
view(kl)
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

figure
subplot(2,1,1);
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, t{c.test,12},'filled');
title('Dane oryginalne'); 
subplot(2,1,2)
scatter(t_dane(c.test,3), t_dane(c.test,10), 5, wynik2,'filled');
title('Dane po klasyfikacji');


function [normk, standk, resultStandk] = calc_minMax_Stand(k)

o = length(k1);
normk = (k1 - ones(o,1)*min(k1))./(ones(o,1)*(max(k1)-min(k1)));   %normalizacja min-max
standk = (k1 - ones(o,1)*mean(k1))./(ones(o,1)*std(k1));               %standaryzacja
resultStandk = zscore(k1);     %funkcja realizujaca standaryzacje

end