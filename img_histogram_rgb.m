I = imread ('peppers.tiff');

subplot(2, 2, 1), imshow(I);
subplot(2, 2, 2), imhist(I(:,:,1));
subplot(2, 2, 3), imhist(I(:,:,2));
subplot(2, 2, 4), imhist(I(:,:,3));
