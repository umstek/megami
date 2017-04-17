%% Change image contrast

I = imread('easter-eggs.png');
c = 0.1;

I2 = I*c;

imshow(I2);
