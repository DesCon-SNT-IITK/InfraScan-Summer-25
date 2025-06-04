img = imread('image1.png');
imshow(img)
size(img)
imfinfo('image1.png');
resizedImg = imresize(img, [256 256]);
figure; imshow(resizedImg); title('Resized Image (256x256)');
grayImg = rgb2gray(resizedImg);
figure; imshow(grayImg); title('Grayscale Image');
blurredImg = imgaussfilt(grayImg, 2);
figure; imshow(blurredImg); title('Gaussian Blurred Image');
sharpenedImg = imsharpen(grayImg);
figure; imshow(sharpenedImg); title('Sharpened Image');
binaryImg = imbinarize(equalizedImg);  
figure; imshow(binaryImg); title('Binarized Image');
imwrite(binaryImg, 'binary_image.png');
[labeledImg, num] = bwlabel(binaryImg);  
coloredLabels = label2rgb(labeledImg, 'jet', 'k'); 
figure; imshow(coloredLabels); title(['Detected Regions: ', num2str(num)]);
imwrite(coloredLabels, 'labeled_regions.png');
