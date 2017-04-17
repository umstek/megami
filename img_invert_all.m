%% Invert an image

I = imread('easter-eggs.png');
I2 = 255 - I(1:end,1:end,:);

imshow(I2);
