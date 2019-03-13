function [ aviInd ] = text2PNG( text, index, aviInd, d)

light = imread('../PSImage/Í¼Êé¹ÝµÆ.png');
bg1 = imread('../PSImage/µ×Í¼_¿Õ.png');
bg2 = imread('../PSImage/µ×Í¼_×óÓÒµÆ.png');
bg_light = imread('../PSImage/µ×Í¼_ÁÁ.png');

[m,n,r]=size(light);

topLeftX = 600;
topLeftY = 750;

botRightX = 790;
botRightY = 1365;

textBackground = imread('../PSImage/ÎÄ×Ö±³¾°.png');

startPos = textStartPos(text, 855);
textBackground = insertText(textBackground, [startPos -80],text, 'FontSize',180, 'Font','ººÒÇ³¬´ÖËÎ¼ò','BoxColor','w');

if (mod(index, 2)==0)
    output = bg2;
else
    output = bg1;
end
%imshow(textBackground);
lighter = 90;

i = topLeftX;
j = topLeftY;

for i=topLeftX+1:botRightX
    for j=topLeftY+1:botRightY
        if (textBackground(i-topLeftX,j-topLeftY,1)==0 && ...
                bg_light(i,j,1)<50 && bg_light(i,j,2)<50 && bg_light(i,j,3)<50 )
            output(i,j,1)=light(i,j,1)+lighter;
            output(i,j,2)=light(i,j,2)+lighter;
            output(i,j,3)=light(i,j,3)+lighter;
        end        
    end
end


str = sprintf('./outputGIF/output_%d.png',index);
output = imresize(output, [m/3, n/3]);
imwrite(output,str);
imshow(output);
%outputAVI
frameRate = 10;
iter = round(frameRate*d);
for i=1:iter
    str = sprintf('./outputAVI/output_%d.png',aviInd);
    imwrite(output,str);
    aviInd = aviInd+1;
end

end

