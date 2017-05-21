%% Scale up by adding n-1 lines

I = imread('easter-eggs.png');
n = 2;
m = 2;

I2 = I(round(1:1/n:end),round(1:1/m:end),:);

imshow(I2);
