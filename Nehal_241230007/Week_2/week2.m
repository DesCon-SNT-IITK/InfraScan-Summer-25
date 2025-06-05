clear all ;close all;
clc;
%load & display image 
img=imread('cameraman.tif');
imshow(img);
title('original image');
disp(size(img));

%resize image
resizedImg=imresize(img,[256,256]);
figure ; imshow (resizedImg);
title ('resized image(256x256');

% Convert the resized image to grayscale
grayImg = im2gray(resizedImg);
figure; imshow(grayImg); title('Grayscale Image');
%Gaussian Blur 
blurredimg=imgaussfilt(grayImg,2);
figure; imshow(blurredimg); title('Gaussian Blurred Image')
%sharpening
sharpenedImg = imsharpen(grayImg);
figure; imshow(sharpenedImg); title('Sharpened Image');
%Histogram Equalization
equalizedImg = histeq(grayImg);
figure; imshow(equalizedImg); title('Histogram Equalized Image');
%Adaptive Thresholding and Region Detection
binaryImg = imbinarize(equalizedImg); 
figure; imshow(binaryImg); title('Binarized Image');

[labeledImg, num] = bwlabel(binaryImg); 
coloredLabels = label2rgb(labeledImg, 'jet', 'k'); 
figure; imshow(coloredLabels); title(['Detected Regions: ', num2str(num)]);
imwrite(resizedImg, 'resized_image.png');
imwrite(grayImg, 'gray_image.png');
imwrite(blurredimg, 'blurred_image.png');
imwrite(sharpenedImg, 'sharpened_image.png');
imwrite(equalizedImg, 'equalized_image.png');