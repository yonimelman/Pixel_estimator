clc; clear all; close all;

directory = 'Line norm Experiment\ranking\JPG\';
extention = ['*.jpg'];
pictures=dir([directory extention]);
nfile=max(size(pictures));

for i=1:nfile
    image(i).img=imread([directory pictures(i).name]);
end

c={'picture', 'pixels';};
for i=1:nfile
   c{end+1,1}=pictures(i).name;
   im2bw(image(i).img,0.99);
   pause;
   bw=im2bw(image(i).img,0.99);
   c{end,2}=length(find(bw<1));

end

filename='sizes-modified.xlsx'
xlswrite(filename,c)