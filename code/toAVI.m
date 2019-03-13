function [ output_args ] = toAVI( picNums,delay)

aviobj = VideoWriter('output.avi');

aviobj.FrameRate  = 10;%帧速率
open(aviobj);
for i=1:picNums%此处修改成自己的范围，起始位置
    name = sprintf('./outputAVI/output_%d.png',i);
    frame = imread(name);
    writeVideo(aviobj,frame);
end
close(aviobj);
end

