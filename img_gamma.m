%% Change image gamma

I = im2double(imread('easter-eggs.png'));

c = 10;
I2 = I.^(1/c);
imshow(I2);
