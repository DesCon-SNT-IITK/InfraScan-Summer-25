function visualizePredictions()
    % Load trained network
    load('trainedDeepCrackNet.mat', 'net');

    % Load sample image from test or train folder
    testImg = imread('DeepCrack/train_img_resized/11111.jpg'); % change filename as needed

    % Resize and preprocess
    inputImg = imresize(testImg, [256 256]);

    % Predict
    predictedMask = semanticseg(inputImg, net);

    % Convert to binary mask (1 where crack, 0 otherwise)
    binaryMask = predictedMask == 'crack';  % Replace 'crack' with actual class name if different

    % Display
    figure;
    subplot(1,2,1), imshow(inputImg), title('Original Image');
    subplot(1,2,2), imshow(binaryMask), title('Predicted Crack Mask');
end
