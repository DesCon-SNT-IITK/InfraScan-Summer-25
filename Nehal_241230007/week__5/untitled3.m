% Advanced Preprocessing in MATLAB – One-Figure Collage

close all; clc; clear;

% Read and preprocess the image
img = imread('3.jpg');
gray = rgb2gray(img);
gauss = imgaussfilt(gray, 2);
medianFiltered = medfilt2(gauss);
equalized = histeq(medianFiltered);
binary = imbinarize(equalized, 'adaptive', 'Sensitivity', 0.6);
normImg = mat2gray(double(equalized));  % Normalized image

% Show all in one figure (2 rows × 3 columns)
figure('Name', 'Advanced Preprocessing - All Steps', 'NumberTitle', 'off');

subplot(2,3,1); imshow(img); title('Original RGB');
subplot(2,3,2); imshow(gauss); title('Gaussian Filter');
subplot(2,3,3); imshow(medianFiltered); title('Median + Gaussian');

subplot(2,3,4); imshow(equalized); title('Histogram Equalized');
subplot(2,3,5); imshow(binary); title('Binarized (Adaptive)');
subplot(2,3,6); imshow(normImg); title('Normalized Image');
