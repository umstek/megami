%% Apply median filter

I = im2double(imread('fishingboat.tif'));

bs = 3;
overflow = ceil(bs/2);

paddedI = zeros(size(I) + bs-1);
paddedI(overflow:end-overflow+1, overflow:end-overflow+1) = I;
I2 = zeros(size(I));

for i = 1:size(I, 1)
    for j = 1:size(I, 2)
        I2(i, j) = median(reshape(paddedI(i+1-1:i+bs-1, j+1-1:j+bs-1)', bs*bs, 1));
    end
end

imshow(I2);
