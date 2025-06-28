load('C:\Users\DELL\Desktop\HiWinGs\HiWinGS.mat')

%%
%ȡ
load('C:\Users\DELL\Desktop\HiWinGs\SST_10_09.mat')
load('C:\Users\DELL\Desktop\HiWinGs\SST_10_10_31.mat')
load('C:\Users\DELL\Desktop\HiWinGs\SST_11_01_13.mat')
load('C:\Users\DELL\Desktop\HiWinGs\U10n_10_09.mat')
load('C:\Users\DELL\Desktop\HiWinGs\U10n_10_10_31.mat')
load('C:\Users\DELL\Desktop\HiWinGs\U10n_11_01_13.mat')
load('C:\Users\DELL\Desktop\HiWinGs\Hs_10_09.mat')
load('C:\Users\DELL\Desktop\HiWinGs\Hs_10_10_31.mat')
load('C:\Users\DELL\Desktop\HiWinGs\Hs_11_01_13.mat')

%%
%Hs
a=size(Hs_10_09,3)+size(Hs_10_10_31,3)+size(Hs_11_01_13,3);
b=size(Hs_10_09,3);
c=size(Hs_10_09,3)+size(Hs_10_10_31,3);
Hs=zeros(103,101,a);
Hs(:,:,1:b)=Hs_10_09;
Hs(:,:,b+1:c)=Hs_10_10_31;
Hs(:,:,c+1:a)=Hs_11_01_13;
for i=1:850
    Hs(:,:,i)=0.5*(Hs(:,:,i)+Hs(:,:,i+1));
end
Hs_tot=Hs(:,:,1:845);

%SST
a=size(SST_10_09,3)+size(SST_10_10_31,3)+size(SST_11_01_13,3);
b=size(SST_10_09,3);
c=size(SST_10_09,3)+size(SST_10_10_31,3);
SST=zeros(103,101,a);
SST(:,:,1:b)=SST_10_09;
SST(:,:,b+1:c)=SST_10_10_31;
SST(:,:,c+1:a)=SST_11_01_13;
for i=1:850
    SST(:,:,i)=0.5*(SST(:,:,i)+SST(:,:,i+1));
end
SST_tot=SST(:,:,1:845);

%U10n
a=size(U10n_10_09,3)+size(U10n_10_10_31,3)+size(U10n_11_01_13,3);
b=size(U10n_10_09,3);
c=size(U10n_10_09,3)+size(U10n_10_10_31,3);
U10n=zeros(103,101,a);
U10n(:,:,1:b)=U10n_10_09;
U10n(:,:,b+1:c)=U10n_10_10_31;
U10n(:,:,c+1:a)=U10n_11_01_13;
for i=1:850
    U10n(:,:,i)=0.5*(U10n(:,:,i)+U10n(:,:,i+1));
end
U10n_tot=U10n(:,:,1:845);


%%

lon = ncread('C:\Users\DELL\Desktop\HiWinGs\Hs_SST_wind_10_09.nc','longitude');
lat = ncread('C:\Users\DELL\Desktop\HiWinGs\Hs_SST_wind_10_09.nc','latitude');

load('C:\Users\DELL\Desktop\HiWinGs\info.mat')

%Hs
Hs_d_l=zeros(size(Hs_tot,3),1);
for q=1:845
    i=date_local(q,1);
    [m,n] = find(lon==i);
    x=m;
    j=date_local(q,2);
    [m,n] = find(lat==j);
    y=m;
    k=q;
    Hs_d_l(q,:)=Hs_tot(x,y,k);
end

%U10n
U10n_d_l=zeros(size(U10n_tot,3),1);
for q=1:845
    i=date_local(q,1);
    [m,n] = find(lon==i);
    x=m;
    j=date_local(q,2);
    [m,n] = find(lat==j);
    y=m;
    k=q;
    U10n_d_l(q,:)=U10n_tot(x,y,k);
end

%SST
SST_d_l=zeros(size(SST_tot,3),1);
for q=1:845
    i=date_local(q,1);
    [m,n] = find(lon==i);
    x=m;
    j=date_local(q,2);
    [m,n] = find(lat==j);
    y=m;
    k=q;
    SST_d_l(q,:)=SST_tot(x,y,k);
end

%%









