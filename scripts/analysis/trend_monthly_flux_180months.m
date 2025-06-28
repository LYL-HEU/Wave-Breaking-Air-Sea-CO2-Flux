clc
clear
close all

% for i=5:9
%     load(['your_path_here\,num2str(i),'\FCO2.mat']);
%     for j=1:12
%         aa=eval(['FCO2_',num2str(j)]);
%         bb(:,:,j)=aa(:,any(~isnan(aa),1));
%         bbb=reshape(bb(:,:,j),[],1);
%         FCO2_long(j)=mean(bbb,'omitnan');
%     end
%     FCO2_mean(:,i-4)=FCO2_long;
% end
% for i=10:19
%     load(['your_path_here\,num2str(i),'\FCO2.mat']);
%     for j=1:12
%         aa=eval(['FCO2_',num2str(j)]);
%         bb=aa(:,any(~isnan(aa),1));
%         bbb=reshape(bb,[],1);
%         FCO2_long(j)=mean(bbb,'omitnan');
%     end
%     FCO2_mean(:,i-4)=FCO2_long;
% end
% 
% 
% for i=5:9
%     load(['your_path_here\,num2str(i),'\W14_FCO2.mat']);
%     for j=1:12
%         AA=eval(['w14_FCO2_',num2str(j)]);
%         BB=AA(:,any(~isnan(aa),1));
%         BBB=reshape(BB,[],1);
%         w14_FCO2_long(j)=mean(BBB,'omitnan');
%     end
%     w14_FCO2_mean(:,i-4)=w14_FCO2_long;
% end
% for i=10:19
%     load(['your_path_here\,num2str(i),'\W14_FCO2.mat']);
%     for j=1:12
%         AA=eval(['w14_FCO2_',num2str(j)]);
%         BB=AA(:,any(~isnan(aa),1));
%         BBB=reshape(BB,[],1);
%         w14_FCO2_long(j)=mean(BBB,'omitnan');
%     end
%     w14_FCO2_mean(:,i-4)=w14_FCO2_long;
% end
%     bbcc=reshape(w14_FCO2_mean,[],1);
    
    
    
for i=5:9
    load(['your_path_here\,num2str(i),'\FCO2.mat']);
    load(['your_path_here\,num2str(i),'\w14_FCO2.mat']);
    for j=1:12
        aa=eval(['FCO2_',num2str(j)]);
%         bb=aa(:,any(~isnan(aa),1));
%         bbb=reshape(bb,[],1);
%         FCO2_long(j)=mean(bbb,'omitnan');
        FCO2_long(j)=mean(aa,'all','omitnan');
        
        AA=eval(['w14_FCO2_',num2str(j)]);
%         BB=AA(:,any(~isnan(aa),1));
%         BBB=reshape(BB,[],1);
%         w14_FCO2_long(j)=mean(BBB,'omitnan');
w14_FCO2_long(j)=mean(AA,'all','omitnan');

    end
    FCO2_mean(:,i-4)=FCO2_long;
    w14_FCO2_mean(:,i-4)=w14_FCO2_long;
end
for i=10:19
    load(['your_path_here\,num2str(i),'\FCO2.mat']);
    load(['your_path_here\,num2str(i),'\w14_FCO2.mat']);
    for j=1:12
        aa=eval(['FCO2_',num2str(j)]);
%         bb=aa(:,any(~isnan(aa),1));
%         bbb=reshape(bb,[],1);
%         FCO2_long(j)=mean(bbb,'omitnan');
        FCO2_long(j)=mean(aa,'all','omitnan');
        
        AA=eval(['w14_FCO2_',num2str(j)]);
%         BB=AA(:,any(~isnan(aa),1));
%         BBB=reshape(BB,[],1);
%         w14_FCO2_long(j)=mean(BBB,'omitnan');
        w14_FCO2_long(j)=mean(AA,'all','omitnan');

    end
    FCO2_mean(:,i-4)=FCO2_long;
    w14_FCO2_mean(:,i-4)=w14_FCO2_long;
end
bbcc=reshape(w14_FCO2_mean,[],1);
ccdd=reshape(FCO2_mean,[],1);
