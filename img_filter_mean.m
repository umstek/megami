%% Apply mean filter

I = im2double(imread('fishingboat.tif'));

b1 = [1 1 1; 1 1 1; 1 1 1];
b2 = [1 1 1; 1 2 1; 1 1 1];
b3 = [1 2 1; 2 4 2; 1 2 1];
bs = 3;
overflow = ceil(bs/2);

paddedI = zeros(size(I) + bs-1);
paddedI(overflow:end-overflow+1, overflow:end-overflow+1) = I;
I2 = zeros(size(I));

for i = 1:size(I, 1)
    for j = 1:size(I, 2)
        window = (paddedI(i:i+bs-1, j:j+bs-1).*b3/sum(sum(b3))*bs*bs);
        I2(i, j) = mean(reshape(window', bs*bs, 1));
    end
end

imshow(I2);
