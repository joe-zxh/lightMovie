
delay=[];
index=1;
aviInd = 1;
fidin=fopen('input.txt','r','n', 'UTF-8');  
while ~feof(fidin)              
    tline=fgetl(fidin) % 从文件读行 
    d=str2num(fgetl(fidin));
    delay = [delay d];
    aviInd = text2PNG(tline,index, aviInd, delay(index));
    index = index+1;
end
fclose(fidin);


toAVI(aviInd-1,delay);
toGIF(index-1,delay);