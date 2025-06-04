img = imread('peppers.png'); 
figure; imshow(img); title('Original RGB Image');
disp(size(img));

resizedImage = imresize(img, [256 256]);
 figure ,imshow(resizedImage), title('Resized 256x256');

grayImage = rgb2gray(resizedImage);
figure, imshow(grayImage), title('Grayscale');

blurredImage = imgaussfilt(grayImage, 2); 
figure, imshow(blurredImage), title('Gaussian Blur');

sharpenedImage = imsharpen(grayImage);
figure, imshow(sharpenedImage), title('Sharpened');

equalizedImage = histeq(grayImage);
figure, imshow(equalizedImage), title('Histogram Equalized');

binaryImage = imbinarize(grayImage);
figure, imshow(binaryImage), title('Binarized');

labeledImage = bwlabel(binaryImage);
coloredLabels = label2rgb(labeledImage, 'jet', 'k', 'shuffle');
figure, imshow(coloredLabels), title('Labeled Regions');

imwrite(resizedImage, 'resizedImage.png');
imwrite(grayImage, 'grayImage.png');
imwrite(blurredImage, 'blurredImage.png');
imwrite(sharpenedImage, 'sharpenedImage.png');
imwrite(equalizedImage, 'equalizedImage.png');
imwrite(binaryImage, 'binaryImage.png');
imwrite(coloredLabels, 'labeledRegions.png');