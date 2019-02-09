load fig_tabs.mat
load data_load.mat

%% Grupowanie k-œrednich

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