load('C:\Users\DELL\Desktop\JR_AMT\AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2.mat')

%%
%X1

%Ħ
U10=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,1);
U10(U10<=8.5)=U10(U10<=8.5)*0.035;
U10(U10>8.5)=U10(U10>8.5)*0.062-0.28;
UF=U10;

%ʩSc
T=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,3);
C=T-272.15;
Sc=2116.8-136.25*C+4.7353*C.^2-0.092307*C.^3+0.0007555*C.^4;

%X1
X1=zeros(size(UF,1),1);
for i=1:size(UF,1)
    X1(i,1)=UF(i,1)*360000*1*10^(-4)*(Sc(i,1)/660)^(-1/2);
end

%%
%X2=360000*1*10^(-5)./K_1.*UF_1.^(5/3).*(9.8*Hs_1).^(2/3).*(Sc/660).^(-1/2)*(1/0.08205)./SST_1

S=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,4);
A=-60.2409+9345.17./T+23.3585*log(T/100)+S.*(0.023517-0.023656*T/100+0.0047036*(T/100).^2);
K=exp(A);

%Hs
Hs=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,2);

%SST
SST=T;

%X2
for j=1:size(UF,1)
    X2(j,1)=360000*1*10^(-5)./K(j,1)*UF(j,1)^(5/3)*(9.8*Hs(j,1)).^(2/3)*(Sc(j,1)/660)^(-1/2)*(1/0.08205)/SST(j,1);
end


%%
%K660
Fco2=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,5);
DCO2=AMT_29_u10n_Hs_SST_SSS_FCO2_DCO2(:,6);
k_m_day=Fco2./DCO2./K;
k_m_day_660=k_m_day.*(Sc./660).^(-1/2);
k_cm_hr_660=100/24*k_m_day_660;

%%
X1_X2_K660=zeros(size(X1,1),3);
X1_X2_K660(:,1)=X1;
X1_X2_K660(:,2)=X2;
X1_X2_K660(:,3)=k_cm_hr_660;
%ȥnan
X1_X2_K660_AMT29=X1_X2_K660(all(~isnan(X1_X2_K660),2),:);

% writematrix(X1_X2_K660_AMT28,'X1_X2_K660_AMT28.csv');