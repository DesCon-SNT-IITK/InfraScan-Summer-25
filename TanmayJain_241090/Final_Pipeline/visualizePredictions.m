function visualizePredictions()
    % Load trained network
    load('trainedDeepCrackNet.mat', 'net');

    % Load sample image from test or train folder
    outputTestImgDir = 'C:\Users\HP\Desktop\OneDrive - IIT Kanpur\DESCON - Infracan\InfraScan-Summer-25\TanmayJain_241090\Output Images\test_img_resized';
    testImg = imread(fullfile(outputTestImgDir,'11222-3.jpg')); % change filename as needed

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
