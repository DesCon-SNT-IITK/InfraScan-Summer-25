img = imread('artoria.png'); 

% Resize to 256x256
img_resized = imresize(img, [256, 256]);

% Convert to grayscale
gray_img = rgb2gray(img_resized);

% Apply Gaussian Blur
blurred_img = imgaussfilt(gray_img, 2); % sigma=2

% Apply Sharpening
sharpened_img = imsharpen(blurred_img);

% Histogram Equalization
equalized_img = histeq(sharpened_img);

% Binarize the image
binary_img = imbinarize(equalized_img);

% Label connected regions
labeled_img = bwlabel(binary_img);

% Display results
figure(1);
imshow(img); title('Original');
figure(2);
imshow(img_resized); title('Resized');
figure(3);
imshow(gray_img); title('Grayscale');
figure(4);
imshow(blurred_img); title('Gaussian Blur');
figure(5);
imshow(sharpened_img); title('Sharpened');
figure(6);
imshow(equalized_img); title('Histogram Equalized');
figure(7);
imshow(binary_img); title('Binarized');
figure(8);
imshow(label2rgb(labeled_img)); 

