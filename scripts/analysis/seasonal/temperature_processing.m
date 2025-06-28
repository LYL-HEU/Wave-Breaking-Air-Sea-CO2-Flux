%=1
lat=ncread('your_path_here\,'lat');
FCO2_LAT=zeros(180,2);
FCO2_LAT(:,1)=lat;
for i=1:180
    a=4*i;
    f=FCO2_2019(:,a-3:a);
    f=f(:);
    fav=mean(f,'omitnan');
    FCO2_LAT(i,2)=fav;
end

%W14_FCO2_LAT
lat=ncread('your_path_here\,'lat');
W14_FCO2_LAT=zeros(180,2);
W14_FCO2_LAT(:,1)=lat;
for i=1:180
    a=4*i;
    f=w14_FCO2_2019(:,a-3:a);
    f=f(:);
    fav=mean(f,'omitnan');
    W14_FCO2_LAT(i,2)=fav;
end