I = imread('peppers.tiff');
n = 1;

I2 = I(1:n:end,1:n:end,:);

imshow(I2);
