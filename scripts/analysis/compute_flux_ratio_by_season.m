clc
clear

for i=2005:2019
    load(['your_path_here\,num2str(i)','w14_FCO2_xia.mat']);
    load(['your_path_here\,num2str(i)','\\FCO2_xia.mat']);
    W14_FCO2(:,:,i-2004)=eval(['w14_FCO2_xia_',num2str(i)']);
    FCO2(:,:,i-2004)=eval(['FCO2_xia_',num2str(i)']);
end
W14_FCO2_decade_xia=mean(W14_FCO2(:,520:720,:),'all','omitnan');
FCO2_decade_xia=mean(FCO2(:,520:720,:),'all','omitnan');
a=(FCO2_decade_xia-W14_FCO2_decade_xia)/W14_FCO2_decade_xia;

% W14_FCO2_decade_xia=mean(W14_FCO2,3);
% FCO2_decade_xia=mean(FCO2,3);
% aaa=mean(FCO2_decade_xia,'all','omitnan');
% bbb=mean(W14_FCO2_decade_xia,'all','omitnan');
% a=(aaa-bbb)/bbb;

% W14_FCO2xia_PgC_year=W14_FCO2_decade_xia*27000*27000*12/(10^15);
% W14_FCO2xia_PgC_year=W14_FCO2xia_PgC_year(:);
% net_w14fco2_xia=sum(W14_FCO2xia_PgC_year,'omitnan');
% FCO2xia_PgC_year=FCO2_decade_xia*27000*27000*12/(10^15);
% FCO2xia_PgC_year=FCO2xia_PgC_year(:);
% net_fco2_xia=sum(FCO2xia_PgC_year,'omitnan');
% b=(net_fco2_xia-net_w14fco2_xia)/net_w14fco2_xia;


% for i=2005:2019
%     load(['your_path_here\,num2str(i)','\w14_FCO2.mat']);
%     w14_FCO2(:,:,i-2004)=(w14_FCO2_1+w14_FCO2_2+w14_FCO2_3+w14_FCO2_4+w14_FCO2_5+w14_FCO2_6+w14_FCO2_7+w14_FCO2_8+w14_FCO2_9+w14_FCO2_10+w14_FCO2_11+w14_FCO2_12)./12;
%     FCO2(:,:,i-2004)=eval(['FCO2_',num2str(i)']);
% end 
% aa=mean(w14_FCO2,3);
% bb=mean(FCO2,3);