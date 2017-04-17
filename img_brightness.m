%% Change image brightness

I = imread('easter-eggs.png');
b = -127;

I2 = I + b;

imshow(I2);
