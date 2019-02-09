load data_load.mat
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