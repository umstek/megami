I = imread('peppers.tiff');

I2 = rot90(I);
I3 = rot90(I, 2);
I4 = rot90(I, 3);

subplot(2, 2, 1), imshow(I);
subplot(2, 2, 2), imshow(I2);
subplot(2, 2, 3), imshow(I3);
subplot(2, 2, 4), imshow(I4);
