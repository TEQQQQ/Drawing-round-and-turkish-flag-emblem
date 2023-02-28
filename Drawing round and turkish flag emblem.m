%% daire içinde daire çizdirme
daire = ones(800);
for i = 1:size(daire,1)
    for j = 1:size(daire,2)
        if(400-i)^2+(400-j)^2<=400^2
            daire(i,j) = 0;
        end
        if (400-i)^2+(400-j)^2<=200^2
            daire(i,j) = i;
        end
    end
end
figure,imshow(daire,[]);

%% hilal çizdirme
hilal = ones(800);
for i = 1:size(hilal,1)
    for j = 1:size(hilal,2)
        if(400-i)^2+(400-j)^2 <= 400^2
            hilal(i,j) = 0;
        end
        if(500-i)^2+(300-j)^2 <= 300^2
            hilal(i,j) = 1;
        end
    end
end
figure,imshow(hilal,[])
%% hilali kırmızıya çevirme
R = ones(800)*255;
G = ones(800);
B = ones(800);
R=R.*(1-hilal);
%% hilali kırmızıya çevirmeeeğ
kizilay(:,:,1)=R;
kizilay(:,:,2)=0;
kizilay(:,:,3)=0;
%%siyah olan piksellerin indislerini bulma
[xx,yy] = find(hilal == 1);
for i = 1 : length(xx)
    kizilay(xx(i),yy(i),:) = 255; % siyah pikselleri beyaza çevirme
end
figure,imshow(uint8(kizilay))
