%Load the image
img = imread('onion.png');
disp('Size of Original Image:');
disp(size(img)); % Display the size of the original image

% Resize to 256x256
resized_img = imresize(img, [256, 256]);

% Convert to grayscale
if size(resized_img, 3) == 3
    gray_img = rgb2gray(resized_img);
else
    gray_img = resized_img;
end

% Apply Gaussian blur
gaussian_blur = imgaussfilt(gray_img, 2); % Adjust sigma as needed

% Apply sharpening
sharpened_img = imsharpen(gray_img);

% Perform histogram equalization
hist_eq_img = histeq(gray_img);

% Binarize the image
binary_img = imbinarize(gray_img);

% Label connected regions
[labeled_img, num_regions] = bwlabel(binary_img);


% Display the results
figure;
subplot(3, 3, 1), imshow(img), title('Original Image');
subplot(3, 3, 2), imshow(resized_img), title('Resized to 256x256');
subplot(3, 3, 3), imshow(gray_img), title('Grayscale');
subplot(3, 3, 4), imshow(gaussian_blur), title('Gaussian Blur');
subplot(3, 3, 5), imshow(sharpened_img), title('Sharpened Image');
subplot(3, 3, 6), imshow(hist_eq_img), title('Histogram Equalized Image');
subplot(3, 3, 7), imshow(binary_img), title('Binarized Image');
subplot(3, 3, 8), imshow(label2rgb(labeled_img)), title('Labeled Regions');
sgtitle('Image Processing Tasks');

% Print number of regions detected
fprintf('Number of connected regions: %d\n', num_regions);

disp('Images saved successfully to disk.'); % Message indicating successful saving