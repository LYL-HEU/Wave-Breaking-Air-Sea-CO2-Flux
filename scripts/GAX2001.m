%%
load('C:\Users\DELL\Desktop\GasEx_2001\local.mat')
%X1

%Ħ
%
u10n=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','u10n');
v10n=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','v10n');
U10=(u10n.^2+v10n.^2).^0.5;
U10(U10<=8.5)=U10(U10<=8.5)*0.035;
U10(U10>8.5)=U10(U10>8.5)*0.062-0.28;
UF=U10;
UF=UF(:);

%LON,LAT
lon=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','longitude');
lat=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','latitude');

%ʩSc
T=ncread('C:\Users\DELL\Desktop\GasEx_2001\SST.nc','sst');
T=mean(T,3);
C=T-272.15;
Sc=2116.8-136.25*C+4.7353*C.^2-0.092307*C.^3+0.0007555*C.^4;
Sc=Sc(:);

%X1
X1=UF*360000*1*10^(-4).*(Sc/660).^(-1/2);

%%
%X2=360000*1*10^(-5)./K_1.*UF_1.^(5/3).*(9.8*Hs_1).^(2/3).*(Sc/660).^(-1/2)*(1/0.08205)./SST_1

s_an=ncread('C:\Users\DELL\Desktop\GasEx_2001\woa18_95A4_s02_01.nc','s_an');
s_an=s_an(:,:,1);
x=-179.5:1:179.5;
y=-89.5:1:89.5;
[X,Y] = meshgrid(y,x);
x=-179.5:0.25:179.5;
y=-89.5:0.25:89.5;
[Xq,Yq] = meshgrid(y,x);
s_an=interp2(X,Y,s_an,Xq,Yq);
s_an_local=s_an(175:223,343:357);
S=zeros(49,15,360);
for i=1:360
    S(:,:,i)=s_an_local;
end
S=mean(S,3);
A=-60.2409+9345.17./T+23.3585*log(T/100)+S.*(0.023517-0.023656.*T/100+0.0047036*(T/100).^2);
K=exp(A);
K=K(:);

%Hs
shww=ncread('C:\Users\DELL\Desktop\GasEx_2001\Hs.nc','shww');
Hs=zeros(49,15,360);
for i=1:360
    x=-136:0.5:-124;
    y=-4:0.5:-0.5;
    [X,Y] = meshgrid(y,x);
    x=-136:0.25:-124;
    y=-4:0.25:-0.5;
    [Xq,Yq] = meshgrid(y,x);
    hs=shww(:,:,i);
    hs=interp2(X,Y,hs,Xq,Yq);
    Hs(:,:,i)=hs;
end   
Hs=mean(Hs,3);
Hs=Hs(:);


%SST
sst=ncread('C:\Users\DELL\Desktop\GasEx_2001\SST.nc','sst');
SST=mean(sst,3);
SST=SST(:);

%X2
for j=1:size(UF,1)
    X2(j,1)=360000*1*10^(-5)./K(j,1)*UF(j,1)^(5/3)*(9.8*Hs(j,1)).^(2/3)*(Sc(j,1)/660)^(-1/2)*(1/0.08205)/SST(j,1);
end

%%
%K660
u10n=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','u10n');
v10n=ncread('C:\Users\DELL\Desktop\GasEx_2001\wind.nc','v10n');
U10=(u10n.^2+v10n.^2).^0.5;
U10=U10(:);
K660=0.0138*(U10).^3+0.0029*(U10).^2-0.0252*U10+8.4065;

%%
X1_X2_K660=zeros(size(X1,1),3);
X1_X2_K660(:,1)=X1;
X1_X2_K660(:,2)=X2;
X1_X2_K660(:,3)=K660;
%ȥnan
X1_X2_K660_Gax2001=X1_X2_K660(all(~isnan(X1_X2_K660),2),:);

writematrix(X1_X2_K660_Gax2001,'X1_X2_K660_Gax2001.csv');