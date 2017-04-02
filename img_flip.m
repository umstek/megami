I = imread ('peppers.tiff');
I2 = I(:,end:-1:1,:);           % horizontal flip
I3 = I(end:-1:1,:,:);           % vertical flip
I4 = I(end:-1:1,end:-1:1,:);    % both

subplot (2,2,1), imshow (I);
subplot (2,2,2), imshow (I2);
subplot (2,2,3), imshow (I3);
subplot (2,2,4), imshow (I4);