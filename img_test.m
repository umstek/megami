I = imread ("peppers.tiff");
subplot (2,2,1), imshow(I);
subplot (2,2,2), hist(I(:,:,1));