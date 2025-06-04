%% IMAGE1

I=imread("musk.jpg");   %chosen image
imshow(I);              %show the image
r=imresize(I,[256,256]);%resizing to 256x256
g=rgb2gray(r);           %convert to gray scale
H=fspecial("gaussian",500);%applying gaussian blur
F=imfilter(g,H);          %applying filter
S=imsharpen(F);           %applying sharpening
his=histeq(S);            %histogram equalization
b=imbinarize(g);          %binarizing image
over={r,g,F,S,his,b};
label=bwlabel(b);         %labelling connected regions
montage(over)             %show all
figure


%% IMAGE2

I1=imread("green.png");
imshow(I1);
r1=imresize(I1,[256,256]);
g1=rgb2gray(r1);
H1=fspecial("gaussian",500);
F1=imfilter(g1,H1);
S1=imsharpen(F1);
his1=histeq(S1);
b1=imbinarize(g1);
display={r1,g1,F1,S1,his1,b1};
label1=bwlabel(b1);
montage(display)
figure