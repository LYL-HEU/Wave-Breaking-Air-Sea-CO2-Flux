%
y=19;

%DCO2
load(['C:\Users\DELL\Desktop\',num2str(y),'\DCO2.mat']);
for i=3:5
    DCO2_chun(:,:,i-2)=eval(['DCO2_',num2str(i)]);
end
DCO2_chun_mean=mean(DCO2_chun,3);
eval(['DCO2_chun_20',num2str(y),'=','DCO2_chun_mean',';']);
for i=6:8
    DCO2_xia(:,:,i-5)=eval(['DCO2_',num2str(i)]);
end
DCO2_xia_mean=mean(DCO2_xia,3);
eval(['DCO2_xia_20',num2str(y),'=','DCO2_xia_mean',';']);
for i=9:11
    DCO2_qiu(:,:,i-8)=eval(['DCO2_',num2str(i)]);
end
DCO2_qiu_mean=mean(DCO2_qiu,3);
eval(['DCO2_qiu_20',num2str(y),'=','DCO2_qiu_mean',';']);
for i=1:2
    DCO2_dong(:,:,i+1)=eval(['DCO2_',num2str(i)]);
end
DCO2_dong(:,:,1)=DCO2_12;
DCO2_dong_mean=mean(DCO2_dong,3);
eval(['DCO2_dong_20',num2str(y),'=','DCO2_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\DCO2_dong'], ['DCO2_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\DCO2_chun'], ['DCO2_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\DCO2_xia'], ['DCO2_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\DCO2_qiu'], ['DCO2_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%FCO2
load(['C:\Users\DELL\Desktop\',num2str(y),'\FCO2.mat']);
for i=3:5
    FCO2_chun(:,:,i-2)=eval(['FCO2_',num2str(i)]);
end
FCO2_chun_mean=mean(FCO2_chun,3);
eval(['FCO2_chun_20',num2str(y),'=','FCO2_chun_mean',';']);
for i=6:8
    FCO2_xia(:,:,i-5)=eval(['FCO2_',num2str(i)]);
end
FCO2_xia_mean=mean(FCO2_xia,3);
eval(['FCO2_xia_20',num2str(y),'=','FCO2_xia_mean',';']);
for i=9:11
    FCO2_qiu(:,:,i-8)=eval(['FCO2_',num2str(i)]);
end
FCO2_qiu_mean=mean(FCO2_qiu,3);
eval(['FCO2_qiu_20',num2str(y),'=','FCO2_qiu_mean',';']);
for i=1:2
    FCO2_dong(:,:,i+1)=eval(['FCO2_',num2str(i)]);
end
FCO2_dong(:,:,1)=FCO2_12;
FCO2_dong_mean=mean(FCO2_dong,3);
eval(['FCO2_dong_20',num2str(y),'=','FCO2_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\FCO2_dong'], ['FCO2_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\FCO2_chun'], ['FCO2_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\FCO2_xia'], ['FCO2_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\FCO2_qiu'], ['FCO2_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%Hs
load(['C:\Users\DELL\Desktop\',num2str(y),'\Hs.mat']);
for i=3:5
    Hs_chun(:,:,i-2)=eval(['Hs_',num2str(i)]);
end
Hs_chun_mean=mean(Hs_chun,3);
eval(['Hs_chun_20',num2str(y),'=','Hs_chun_mean',';']);
for i=6:8
    Hs_xia(:,:,i-5)=eval(['Hs_',num2str(i)]);
end
Hs_xia_mean=mean(Hs_xia,3);
eval(['Hs_xia_20',num2str(y),'=','Hs_xia_mean',';']);
for i=9:11
    Hs_qiu(:,:,i-8)=eval(['Hs_',num2str(i)]);
end
Hs_qiu_mean=mean(Hs_qiu,3);
eval(['Hs_qiu_20',num2str(y),'=','Hs_qiu_mean',';']);
for i=1:2
    Hs_dong(:,:,i+1)=eval(['Hs_',num2str(i)]);
end
Hs_dong(:,:,1)=Hs_12;
Hs_dong_mean=mean(Hs_dong,3);
eval(['Hs_dong_20',num2str(y),'=','Hs_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Hs_dong'], ['Hs_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Hs_chun'], ['Hs_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Hs_xia'], ['Hs_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Hs_qiu'], ['Hs_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%Kb
load(['C:\Users\DELL\Desktop\',num2str(y),'\Kb.mat']);
for i=3:5
    Kb_chun(:,:,i-2)=eval(['Kb_',num2str(i)]);
end
Kb_chun_mean=mean(Kb_chun,3);
eval(['Kb_chun_20',num2str(y),'=','Kb_chun_mean',';']);
for i=6:8
    Kb_xia(:,:,i-5)=eval(['Kb_',num2str(i)]);
end
Kb_xia_mean=mean(Kb_xia,3);
eval(['Kb_xia_20',num2str(y),'=','Kb_xia_mean',';']);
for i=9:11
    Kb_qiu(:,:,i-8)=eval(['Kb_',num2str(i)]);
end
Kb_qiu_mean=mean(Kb_qiu,3);
eval(['Kb_qiu_20',num2str(y),'=','Kb_qiu_mean',';']);
for i=1:2
    Kb_dong(:,:,i+1)=eval(['Kb_',num2str(i)]);
end
Kb_dong(:,:,1)=Kb_12;
Kb_dong_mean=mean(Kb_dong,3);
eval(['Kb_dong_20',num2str(y),'=','Kb_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kb_dong'], ['Kb_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kb_chun'], ['Kb_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kb_xia'], ['Kb_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kb_qiu'], ['Kb_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%Knb
load(['C:\Users\DELL\Desktop\',num2str(y),'\Knb.mat']);
for i=3:5
    Knb_chun(:,:,i-2)=eval(['Knb_',num2str(i)]);
end
Knb_chun_mean=mean(Knb_chun,3);
eval(['Knb_chun_20',num2str(y),'=','Knb_chun_mean',';']);
for i=6:8
    Knb_xia(:,:,i-5)=eval(['Knb_',num2str(i)]);
end
Knb_xia_mean=mean(Knb_xia,3);
eval(['Knb_xia_20',num2str(y),'=','Knb_xia_mean',';']);
for i=9:11
    Knb_qiu(:,:,i-8)=eval(['Knb_',num2str(i)]);
end
Knb_qiu_mean=mean(Knb_qiu,3);
eval(['Knb_qiu_20',num2str(y),'=','Knb_qiu_mean',';']);
for i=1:2
    Knb_dong(:,:,i+1)=eval(['Knb_',num2str(i)]);
end
Knb_dong(:,:,1)=Knb_12;
Knb_dong_mean=mean(Knb_dong,3);
eval(['Knb_dong_20',num2str(y),'=','Knb_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Knb_dong'], ['Knb_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Knb_chun'], ['Knb_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Knb_xia'], ['Knb_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Knb_qiu'], ['Knb_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%Kw660
load(['C:\Users\DELL\Desktop\',num2str(y),'\Kw660.mat']);
for i=3:5
    Kw_chun(:,:,i-2)=eval(['Kw_',num2str(i)]);
end
Kw_chun_mean=mean(Kw_chun,3);
eval(['Kw_chun_20',num2str(y),'=','Kw_chun_mean',';']);
for i=6:8
    Kw_xia(:,:,i-5)=eval(['Kw_',num2str(i)]);
end
Kw_xia_mean=mean(Kw_xia,3);
eval(['Kw_xia_20',num2str(y),'=','Kw_xia_mean',';']);
for i=9:11
    Kw_qiu(:,:,i-8)=eval(['Kw_',num2str(i)]);
end
Kw_qiu_mean=mean(Kw_qiu,3);
eval(['Kw_qiu_20',num2str(y),'=','Kw_qiu_mean',';']);
for i=1:2
    Kw_dong(:,:,i+1)=eval(['Kw_',num2str(i)]);
end
Kw_dong(:,:,1)=Kw_12;
Kw_dong_mean=mean(Kw_dong,3);
eval(['Kw_dong_20',num2str(y),'=','Kw_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kw660_dong'], ['Kw_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kw660_chun'], ['Kw_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kw660_xia'], ['Kw_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Kw660_qiu'], ['Kw_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%K_Solubility
load(['C:\Users\DELL\Desktop\',num2str(y),'\Solubility.mat']);
for i=3:5
    K_chun(:,:,i-2)=eval(['K_',num2str(i)]);
end
K_chun_mean=mean(K_chun,3);
eval(['K_chun_20',num2str(y),'=','K_chun_mean',';']);
for i=6:8
    K_xia(:,:,i-5)=eval(['K_',num2str(i)]);
end
K_xia_mean=mean(K_xia,3);
eval(['K_xia_20',num2str(y),'=','K_xia_mean',';']);
for i=9:11
    K_qiu(:,:,i-8)=eval(['K_',num2str(i)]);
end
K_qiu_mean=mean(K_qiu,3);
eval(['K_qiu_20',num2str(y),'=','K_qiu_mean',';']);
for i=1:2
    K_dong(:,:,i+1)=eval(['K_',num2str(i)]);
end
K_dong(:,:,1)=K_12;
K_dong_mean=mean(K_dong,3);
eval(['K_dong_20',num2str(y),'=','K_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Solubility_dong'], ['K_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Solubility_chun'], ['K_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Solubility_xia'], ['K_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\Solubility_qiu'], ['K_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%SSS
load(['C:\Users\DELL\Desktop\',num2str(y),'\SSS.mat']);
for i=3:5
    S_chun(:,:,i-2)=eval(['S_',num2str(i)]);
end
S_chun_mean=mean(S_chun,3);
eval(['S_chun_20',num2str(y),'=','S_chun_mean',';']);
for i=6:8
    S_xia(:,:,i-5)=eval(['S_',num2str(i)]);
end
S_xia_mean=mean(S_xia,3);
eval(['S_xia_20',num2str(y),'=','S_xia_mean',';']);
for i=9:11
    S_qiu(:,:,i-8)=eval(['S_',num2str(i)]);
end
S_qiu_mean=mean(S_qiu,3);
eval(['S_qiu_20',num2str(y),'=','S_qiu_mean',';']);
for i=1:2
    S_dong(:,:,i+1)=eval(['S_',num2str(i)]);
end
S_dong(:,:,1)=S_12;
S_dong_mean=mean(S_dong,3);
eval(['S_dong_20',num2str(y),'=','S_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SSS_dong'], ['S_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SSS_chun'], ['S_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SSS_xia'], ['S_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SSS_qiu'], ['S_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%SST
load(['C:\Users\DELL\Desktop\',num2str(y),'\SST.mat']);
for i=3:5
    T_chun(:,:,i-2)=eval(['T_',num2str(i)]);
end
T_chun_mean=mean(T_chun,3);
eval(['T_chun_20',num2str(y),'=','T_chun_mean',';']);
for i=6:8
    T_xia(:,:,i-5)=eval(['T_',num2str(i)]);
end
T_xia_mean=mean(T_xia,3);
eval(['T_xia_20',num2str(y),'=','T_xia_mean',';']);
for i=9:11
    T_qiu(:,:,i-8)=eval(['T_',num2str(i)]);
end
T_qiu_mean=mean(T_qiu,3);
eval(['T_qiu_20',num2str(y),'=','T_qiu_mean',';']);
for i=1:2
    T_dong(:,:,i+1)=eval(['T_',num2str(i)]);
end
T_dong(:,:,1)=T_12;
T_dong_mean=mean(T_dong,3);
eval(['T_dong_20',num2str(y),'=','T_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SST_dong'], ['T_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SST_chun'], ['T_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SST_xia'], ['T_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\SST_qiu'], ['T_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%U10
load(['C:\Users\DELL\Desktop\',num2str(y),'\U10.mat']);
for i=3:5
    U10_chun(:,:,i-2)=eval(['U10_',num2str(i)]);
end
U10_chun_mean=mean(U10_chun,3);
eval(['U10_chun_20',num2str(y),'=','U10_chun_mean',';']);
for i=6:8
    U10_xia(:,:,i-5)=eval(['U10_',num2str(i)]);
end
U10_xia_mean=mean(U10_xia,3);
eval(['U10_xia_20',num2str(y),'=','U10_xia_mean',';']);
for i=9:11
    U10_qiu(:,:,i-8)=eval(['U10_',num2str(i)]);
end
U10_qiu_mean=mean(U10_qiu,3);
eval(['U10_qiu_20',num2str(y),'=','U10_qiu_mean',';']);
for i=1:2
    U10_dong(:,:,i+1)=eval(['U10_',num2str(i)]);
end
U10_dong(:,:,1)=U10_12;
U10_dong_mean=mean(U10_dong,3);
eval(['U10_dong_20',num2str(y),'=','U10_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\U10_dong'], ['U10_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\U10_chun'], ['U10_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\U10_xia'], ['U10_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\U10_qiu'], ['U10_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%W14_FCO2
load(['C:\Users\DELL\Desktop\',num2str(y),'\W14_FCO2.mat']);
for i=3:5
    w14_FCO2_chun(:,:,i-2)=eval(['w14_FCO2_',num2str(i)]);
end
w14_FCO2_chun_mean=mean(w14_FCO2_chun,3);
eval(['w14_FCO2_chun_20',num2str(y),'=','w14_FCO2_chun_mean',';']);
for i=6:8
    w14_FCO2_xia(:,:,i-5)=eval(['w14_FCO2_',num2str(i)]);
end
w14_FCO2_xia_mean=mean(w14_FCO2_xia,3);
eval(['w14_FCO2_xia_20',num2str(y),'=','w14_FCO2_xia_mean',';']);
for i=9:11
    w14_FCO2_qiu(:,:,i-8)=eval(['w14_FCO2_',num2str(i)]);
end
w14_FCO2_qiu_mean=mean(w14_FCO2_qiu,3);
eval(['w14_FCO2_qiu_20',num2str(y),'=','w14_FCO2_qiu_mean',';']);
for i=1:2
    w14_FCO2_dong(:,:,i+1)=eval(['w14_FCO2_',num2str(i)]);
end
w14_FCO2_dong(:,:,1)=w14_FCO2_12;
w14_FCO2_dong_mean=mean(w14_FCO2_dong,3);
eval(['w14_FCO2_dong_20',num2str(y),'=','w14_FCO2_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\w14_FCO2_dong'], ['w14_FCO2_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\w14_FCO2_chun'], ['w14_FCO2_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\w14_FCO2_xia'], ['w14_FCO2_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\w14_FCO2_qiu'], ['w14_FCO2_qiu_20',num2str(y)]);
%-------------------------------------------------------------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------------------------------------------------------------

%W14_Kw660
load(['C:\Users\DELL\Desktop\',num2str(y),'\W14_Kw660.mat']);
for i=3:5
    KWH14_chun(:,:,i-2)=eval(['KWH14_',num2str(i)]);
end
KWH14_chun_mean=mean(KWH14_chun,3);
eval(['KWH14_chun_20',num2str(y),'=','KWH14_chun_mean',';']);
for i=6:8
    KWH14_xia(:,:,i-5)=eval(['KWH14_',num2str(i)]);
end
KWH14_xia_mean=mean(KWH14_xia,3);
eval(['KWH14_xia_20',num2str(y),'=','KWH14_xia_mean',';']);
for i=9:11
   KWH14_qiu(:,:,i-8)=eval(['KWH14_',num2str(i)]);
end
KWH14_qiu_mean=mean(KWH14_qiu,3);
eval(['KWH14_qiu_20',num2str(y),'=','KWH14_qiu_mean',';']);
for i=1:2
    KWH14_dong(:,:,i+1)=eval(['KWH14_',num2str(i)]);
end
KWH14_dong(:,:,1)=KWH14_12;
KWH14_dong_mean=mean(KWH14_dong,3);
eval(['KWH14_dong_20',num2str(y),'=','KWH14_dong_mean',';']);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\KWH14_dong'], ['KWH14_dong_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\KWH14_chun'], ['KWH14_chun_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\KWH14_xia'], ['KWH14_xia_20',num2str(y)]);
save(['C:\Users\DELL\Desktop\',num2str(y),'\\KWH14_qiu'], ['KWH14_qiu_20',num2str(y)]);