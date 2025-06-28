load('C:\Users\DELL\Desktop\SO-234-235\SO_234_235.mat')

%%
%X1

%Ħ
UF=table2array(SO234235tablelong(:,7));

%ʩSc
Sc=table2array(SO234235tablelong(:,16));

%X1
X1=zeros(size(UF,1),1);
for i=1:size(UF,1)
    X1(i,1)=UF(i,1)*360000*1*10^(-4)*(Sc(i,1)/660)^(-1/2);
end

%%
 %X2=360000*1*10^(-5)./K_1.*UF_1.^(5/3).*(9.8*Hs_1).^(2/3).*(Sc/660).^(-1/2)*(1/0.08205)./SST_1
 
 K=0.001*table2array(SO234235tablelong(:,13));
 
 %Hs
 Hs=table2array(SO234235tablelong(:,19));
 
 %SST
 SST=272.15+table2array(SO234235tablelong(:,9));
 
 %X2
 for j=1:size(UF,1)
      X2(j,1)=360000*1*10^(-5)./K(j,1)*UF(j,1)^(5/3)*(9.8*Hs(j,1)).^(2/3)*(Sc(j,1)/660)^(-1/2)*(1/0.08205)/SST(j,1);
 end
 
  %%
 X1_X2_K660=zeros(size(X1,1),3);
 X1_X2_K660(:,1)=X1;
 X1_X2_K660(:,2)=X2;
 X1_X2_K660(:,3)=table2array(SO234235tablelong(:,5));
 %ȥnan
 X1_X2_K660_SO234235=X1_X2_K660(all(~isnan(X1_X2_K660),2),:);
 writematrix(X1_X2_K660_SO234235,'X1_X2_K660_SO234235.csv');
 