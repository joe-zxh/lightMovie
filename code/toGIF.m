function [ output_args ] = toGIF( picNums,delay)

for i=1:picNums
    str = sprintf('./outputGIF/output_%d.png',i);
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,'movefig.gif','DelayTime',delay(i),'LoopCount',Inf)
    else
        imwrite(I,map,'movefig.gif','WriteMode','append','DelayTime',delay(i))    
    end
end
end

