%%
% Adjust cruise coordinates to 0.5 grid
latitude=table2array(cruiseTable(:,2));
longitude=table2array(cruiseTable(:,3));

% Latitude
lat=zeros(size(latitude,1),1);
for i=1:845
    a=latitude(i,:);
    b=floor(a);
    if abs(a-b-0.5) <= 0.25
        a=b+.5;
    else
        if a-b-0.5 < 0
            a=b;
        else
            a=b+1;
        end
    end
    lat(i,:)=a;
end

% Longitude
lon=zeros(size(longitude,1),1);
for i=1:845
    a=longitude(i,:);
    b=floor(a);
    if abs(a-b-0.5) <= 0.25
        a=b+.5;
    else
        if a-b-0.5 < 0
            a=b;
        else
            a=b+1;
        end
    end
    lon(i,:)=a;
end

