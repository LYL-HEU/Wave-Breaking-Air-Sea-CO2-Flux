clc
clear
close all

% for i=5:9
%     load(['your_path_here\,num2str(i)','\\FCO2_qiu.mat']);
%     FCO2(:,:,i-4)=eval(['FCO2_qiu_200',num2str(i)']);
% end
% for i=10:19
%     load(['your_path_here\,num2str(i)','\\FCO2_qiu.mat']);
%     FCO2(:,:,i-4)=eval(['FCO2_qiu_20',num2str(i)']);
% end
% FCO2_decade_qiu=mean(FCO2,3);
% bbb=reshape(FCO2_decade_qiu,[],1);
% FCO2_qiu=mean(bbb,'omitnan');
% 
% for i=5:9
%     load(['your_path_here\,num2str(i)','\\w14_FCO2_qiu.mat']);
%     w14_FCO2(:,:,i-4)=eval(['w14_FCO2_qiu_200',num2str(i)']);
% end
% for i=10:19
%     load(['your_path_here\,num2str(i)','\\w14_FCO2_qiu.mat']);
%     w14_FCO2(:,:,i-4)=eval(['w14_FCO2_qiu_20',num2str(i)']);
% end
% w14_FCO2_decade_qiu=mean(w14_FCO2,3);
% bb=reshape(w14_FCO2_decade_qiu,[],1);
% w14_FCO2_qiu=mean(bb,'omitnan');

for i=5:9
    load(['your_path_here\,num2str(i)','\\FCO2_qiu.mat']);
    load(['your_path_here\,num2str(i)','\\w14_FCO2_qiu.mat']);
    FCO2(:,:,i-4)=eval(['FCO2_qiu_200',num2str(i)']);
    FCO2_a(i-4)=mean(FCO2(:,:,i-4),'all','omitnan');
    %     FCO2(:,:,i-4)=eval(['FCO2_qiu_200',num2str(i)']);
    FCO2_B=FCO2(:,any(~isnan(FCO2(:,:,i-4)),1));
    %     AA=reshape(FCO2_B,[],1);
    %     FCO2_decade(i-4)=mean(AA,'omitnan');
    FCO2_decade(i-4)=mean(FCO2_B,'all','omitnan');
    
    w14_FCO2_a=eval(['w14_FCO2_qiu_200',num2str(i)']);
    w14_FCO2_b=w14_FCO2_a(:,any(~isnan(FCO2(:,:,i-4)),1));
    aa=reshape(w14_FCO2_b,[],1);
    w14_FCO2_decade_qiu(i-4)=mean(aa,'omitnan');
end
for i=10:19
    load(['your_path_here\,num2str(i)','\\FCO2_qiu.mat']);
    load(['your_path_here\,num2str(i)','\\w14_FCO2_qiu.mat']);
    FCO2(:,:,i-4)=eval(['FCO2_qiu_20',num2str(i)']);
    FCO2_a(i-4)=mean(FCO2(:,:,i-4),'all','omitnan');
    %     FCO2(:,:,i-4)=eval(['FCO2_qiu_20',num2str(i)']);
    FCO2_B=FCO2(:,any(~isnan(FCO2(:,:,i-4)),1));
    %     AA=reshape(FCO2_B,[],1);
    %     FCO2_decade(i-4)=mean(AA,'omitnan');
    FCO2_decade(i-4)=mean(FCO2_B,'all','omitnan');
    
    w14_FCO2_a=eval(['w14_FCO2_qiu_20',num2str(i)']);
    w14_FCO2_b=w14_FCO2_a(:,any(~isnan(FCO2(:,:,i-4)),1));
    aa=reshape(w14_FCO2_b,[],1);
    w14_FCO2_decade_qiu(i-4)=mean(aa,'omitnan');
end
% FCO2_decade_qiu=mean(FCO2,3);
% bbb=reshape(FCO2_decade_qiu,[],1);
% FCO2_qiu=mean(bbb,'omitnan');
dddd=mean(FCO2_a);
FCO2_qiu=mean(FCO2_decade,'omitnan');

% w14_FCO2_decade_qiu=mean(w14_FCO2,3);
% bb=reshape(w14_FCO2_decade_qiu,[],1);
w14_FCO2_qiu=mean(w14_FCO2_decade_qiu,'omitnan');
