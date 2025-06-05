%Loading 2 images
I=imread("mainbefore.jpg");
I2=imread("Landscape.jpg");
imglist1={I,I2};
montage(imglist1)
title("Both images")
%%
%resizing image I
figure;
resized_I=imresize(I,[256,256]);
imglist2={I,resized_I};
montage(imglist2);
title("resized images");
%%
%converted to grascale
figure;
gs2=im2gray(I2);
gs1=im2gray(I);
imglist3={I,gs1,I2,gs2};
montage(imglist3);
title("gray images");
%%
%Applying Guassian Blur
figure;
gausblr1=imgaussfilt(I2,10);
imglist4={I2,gausblr1};
montage(imglist4);
title("Guassian Blurred Image");
%%
%Applying sharpenning
figure;
sharpenedimg1=imsharpen(gs1);
sharpenedimg2=imsharpen(I2);
imglist5={gs1,sharpenedimg1};
montage(imglist5);
title ("sharpened image");
%%
%performing histogram equalisation
figure;
equalizedimg1=histeq(I2);
equalizedimg2=histeq(gs2);
imglist6={I2,equalizedimg1};
montage(imglist6);
title("Equalised image");
%%
%Binarising the image
figure;
binarizedimg=imbinarize(equalizedimg2);
imglist7={equalizedimg2,binarizedimg};
montage(imglist7);
title("binarised image");
%%
%Labeling connected region
figure;
[labeledimg,num]=bwlabel(binarizedimg);
coloredlabels=label2rgb(labeledimg,'jet','k');
imglist8={binarizedimg,coloredlabels};
montage(imglist8);
title("labeled image");
%%
imwrite(resized_I, 'resized_image.png');
imwrite(gs1, 'gray_image.png');
imwrite(gausblr1, 'blurred_image.png');
imwrite(sharpenedimg1, 'sharpened_image.png');
imwrite(equalizedimg, 'equalized_image.png');
imwrite(I,'chameleon_image.png');
imwrite(I2,'Landscape.png');