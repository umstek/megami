%% Change image brightness

I = imread('easter-eggs.png');
b = -127;

I2 = I(1:end,1:end,:) + b;

imshow(I2);
