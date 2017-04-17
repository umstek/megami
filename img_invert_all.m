%% Invert an image

I = imread('easter-eggs.png');
I2 = 255 - I;

imshow(I2);
