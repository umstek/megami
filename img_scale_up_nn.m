%% Scale down by adding n-1 lines

I = imread('easter-eggs.png');
n = 2;
m = 2;

I2 = I(1:1/n:end,1:1/m:end,:);

imshow(I2);
