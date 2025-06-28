clc
clear
close all

for i=5:9
    document=['your_path_here\,num2str(i)','\200',num2str(i)','fCO2.mat'];
    load(document);
    load(['your_path_here\,num2str(i)','\W14_200',num2str(i)','fCO2.mat']);
end
for i=10:19
    document=['your_path_here\,num2str(i)','\20',num2str(i)','fCO2.mat'];
    load(document);
    load(['your_path_here\,num2str(i)','\W14_20',num2str(i)','fCO2.mat']);
end
% FCO2_decade=zeros(1440,720,15);
for i=5:9
    FCO2_decade(:,:,i-4)=eval(['FCO2_200',num2str(i)']);
    FCO2_a(i-4)=mean(FCO2_decade(:,:,i-4),'all','omitnan');
    
    w14_FCO2_a=eval(['w14_FCO2_200',num2str(i)']);
    w14_FCO2_b=w14_FCO2_a(:,any(~isnan(FCO2_decade(:,:,i-4)),1));
    aa=reshape(w14_FCO2_b,[],1);
    w14_FCO2_decade(i-4)=mean(aa,'omitnan');
end
for i=10:19
    FCO2_decade(:,:,i-4)=eval(['FCO2_20',num2str(i)']);
    FCO2_a(i-4)=mean(FCO2_decade(:,:,i-4),'all','omitnan');
    
    w14_FCO2_a=eval(['w14_FCO2_20',num2str(i)']);
    w14_FCO2_b=w14_FCO2_a(:,any(~isnan(FCO2_decade(:,:,i-4)),1));
    aa=reshape(w14_FCO2_b,[],1);
    w14_FCO2_decade(i-4)=mean(aa,'omitnan');
end
% FCO2_decade_average=mean(FCO2_decade,3);
% bbb=reshape(FCO2_decade_average,[],1);
% FCO2_chun=mean(bbb,'omitnan');

FCO2=mean(FCO2_a);
w14_FCO2=mean(w14_FCO2_decade);