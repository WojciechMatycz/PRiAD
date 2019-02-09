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

    tab1 = get_basic_stats(tab1, k1);
    
    tab1 = array2table(tab1);
    tab1.Properties.RowNames = rowNames;
    tab1.Properties.VariableNames = columnNames(1,1:11);
    save('tab1.mat','tab1');
    
    tab2 = get_basic_stats(tab2, k2);
    
    tab2 = array2table(tab2);
    tab2.Properties.RowNames = rowNames;
    tab2.Properties.VariableNames = columnNames(1,1:11);
    save('tab2.mat','tab2');
    
    tab3 = get_basic_stats(tab3, k3);
    
    tab3 = array2table(tab3);
    tab3.Properties.RowNames = rowNames;
    tab3.Properties.VariableNames = columnNames(1,1:11);
    save('tab3.mat','tab3');
    
    tab4 = get_basic_stats(tab4, k4);
    
    tab4 = array2table(tab4);
    tab4.Properties.RowNames = rowNames;
    tab4.Properties.VariableNames = columnNames(1,1:11);
    save('tab4.mat','tab4');
    
    tab5 = get_basic_stats(tab5, k5);

    tab5 = array2table(tab5);
    tab5.Properties.RowNames = rowNames;
    tab5.Properties.VariableNames = columnNames(1,1:11);
    save('tab5.mat','tab5');
    
    tab6 = get_basic_stats(tab6, k6);
    
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

save('data_load.mat','tab1','tab2','tab3','tab4','tab5','tab6','k1','k2','k3','k4','k5','k6')

function table = get_basic_stats(tab1, k)
    
    tab1(1,:) = mean(k);                %Srednie arytmetyczne
    tab1(2,:) = geomean(max(k,0));        %Srednie geometryczne  
    tab1(3,:) = harmmean(k);            %Srednie harmoniczne 
    tab1(4,:) = median(k);              %Mediany klas
    tab1(5,:) = mode(k);                %Moda
    tab1(6,:) = max(k);                 %Max klas 
    tab1(7,:) = min(k);                 %Min klas
    tab1(8,:) = tab1(6,:) - tab1(7,:);   %Zakres
    tab1(9,:) = std(k);                 %Odchylenie standardowe klas
    tab1(10,:) = var(k);                %Wariancja klas
    tab1(11,:) = quantile(k,.25);       %Pierwszy Kwartyl
    tab1(12,:) = quantile(k,.75);       %Trzeci Kwartyl
    tab1(13,:) = tab1(12,:)-tab1(11,:);   %Odstêp miêdzykwartylowy
    table = tab1;
end