%% Scale down by skipping n-1 lines

I = imread('peppers.tiff');
n = 2;
m = 2;

I2 = I(1:n:end,1:m:end,:);

imshow(I2);
