
IMG = imread('../PSImage/¹ØµÆ.png');

[m,n,r]=size(IMG);

topLeftX = 600;
topLeftY = 575;

botRightX = 790;
botRightY = 1555;

% topLeftX = 600;
% topLeftY = 575;
% 
% botRightX = 790;
% botRightY = 1555;

output = IMG;
%imshow(textBackground);

i = topLeftX;
j = topLeftY;

for i=topLeftX+1:botRightX
    for j=topLeftY+1:botRightY
        if (IMG(i,j,1)>0 && IMG(i,j,2)>0 && IMG(i,j,3)>0 )
           
            output(i,j,1)=40;
            output(i,j,2)=33;
            output(i,j,3)=27;
        end        
    end
end

imshow(output);

