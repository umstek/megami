%% Change image brightness

I = imread('easter-eggs.png');
c = 0.1;

I2 = I(1:end,1:end,:).*c;

imshow(I2);
