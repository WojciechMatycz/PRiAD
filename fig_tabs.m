%% Tabele z podstawowymi parametrami zbioru danych(wiersze) oraz atrybutami opisuj¹cymi(kolumny)
load data_load.mat

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

save('fig_tabs.mat','figTab1','figTab2','figTab3','figTab4','figTab5','figTab6','figTab7','figTab8','figTab9','figTab10','figTab11','figTabVarNames')