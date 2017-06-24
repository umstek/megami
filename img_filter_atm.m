%% Apply alpha-trimmed mean filter

I = im2double(imread('fishingboat.tif'));

bs = 3;
p = 2;
overflow = ceil(bs/2);

paddedI = zeros(size(I) + bs-1);
paddedI(overflow:end-overflow+1, overflow:end-overflow+1) = I;
I2 = zeros(size(I));

for i = 1:size(I, 1)
    for j = 1:size(I, 2)
        window = sort(reshape(paddedI(i:i+bs-1, j:j+bs-1)', bs*bs, 1));
        I2(i, j) = mean(window(p+1:end-p));
    end
end

imshow(I2);
