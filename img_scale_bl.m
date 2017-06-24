%% Scale up by bilinear method

I = imread('easter-eggs.png');
[h, w, c] = size(I);

nh = 400;
nw = 400;

rh = h / nh;
rw = w / nw;

[fw, fh] = meshgrid(1:nw, 1:nh);
fh = fh * rh;
fw = fw * rw;

floor_h = floor(fh);
floor_w = floor(fw);

floor_h(floor_h < 1) = 1;
floor_h(floor_h > h - 1) = h - 1;
floor_w(floor_w < 1) = 1;
floor_h(floor_h > h - 1) = h - 1;

dif_h = fh - floor_h;
dif_w = fw - floor_w;

in1_ind = sub2ind([h, w], floor_h, floor_w);
in2_ind = sub2ind([h, w], floor_h + 1, floor_w);
in3_ind = sub2ind([h, w], floor_h, floor_w );
in4_ind = sub2ind([h, w], floor_h + 1, floor_w);

out = zeros(nh, nw, size(I, 3));
out = cast(out, class(I));

for idx = 1 : size(I, 3)
    chan = double(I(:,:,idx));
    tmp = chan(in1_ind).*(1 - dif_h).*(1 - dif_w) + ...
        chan(in2_ind).*(dif_h).*(1 - dif_w) + ...
        chan(in3_ind).*(1 - dif_h).*(dif_w) + ...
        chan(in4_ind).*(dif_h).*(dif_w);
    out(:,:,idx) = cast(tmp, class(I));
end

imshow(out)
