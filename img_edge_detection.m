%% Edge detection

I = im2double(imread('fishingboat.tif'));
I2 = zeros(size(I));

for i = 1:size(I, 1) - 2
    for j = 1:size(I, 2) - 2
        Gx=((2*I(i+2, j+1) + I(i+2, j) + I(i+2, j+2)) - (2*I(i, j+1) + I(i, j) + I(i, j+2)));
        Gy=((2*I(i+1, j+2) + I(i, j+2) + I(i+2, j+2)) - (2*I(i+1, j) + I(i, j) + I(i+2, j)));
      
        I2(i,j)=sqrt(Gx.^2+Gy.^2);
    end
end

imshow(I2);
