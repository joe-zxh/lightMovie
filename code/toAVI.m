function [ output_args ] = toAVI( picNums,delay)

aviobj = VideoWriter('output.avi');

aviobj.FrameRate  = 10;%֡����
open(aviobj);
for i=1:picNums%�˴��޸ĳ��Լ��ķ�Χ����ʼλ��
    name = sprintf('./outputAVI/output_%d.png',i);
    frame = imread(name);
    writeVideo(aviobj,frame);
end
close(aviobj);
end

