%% Load MNIST images and labels
[XTrain, YTrain] = digitTrain4DArrayData;
[XTest, YTest] = digitTest4DArrayData;

%% Visualize 
figure;
for i = 1:25
    subplot(5,5,i)
    imshow(XTrain(:,:,:,i));
    title(num2str(YTrain(i)));
end

%% Defining the Neural Network Architecture
layers = [
    imageInputLayer([28 28 1]) % Input layer for 28x28 grayscale images
    
    convolution2dLayer(3, 8, 'Padding', 'same') % 3x3 conv with 8 filters
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2, 'Stride', 2) % 2x2 max pooling
    
    convolution2dLayer(3, 16, 'Padding', 'same') % 3x3 conv with 16 filters
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(10) % Output layer with 10 classes
    softmaxLayer
    classificationLayer
];

%% Training the Network
options = trainingOptions('adam', ...
    'MaxEpochs', 5, ...
    'InitialLearnRate', 1e-3, ...
    'Verbose', false, ...
    'Plots', 'training-progress', ...
    'ValidationData', {XTest, YTest}, ...
    'ValidationFrequency', 30);

net = trainNetwork(XTrain, YTrain, layers, options);

%% Testing and Results
% Evaluate on test set
YPred = classify(net, XTest);
accuracy = sum(YPred == YTest)/numel(YTest);
fprintf('Test Accuracy: %.2f%%\n', accuracy * 100);

% Confusion matrix
figure;
plotconfusion(YTest, YPred);
title('Confusion Matrix');

% Display some predictions with true labels
figure;
for i = 1:25
    subplot(5,5,i)
    imshow(XTest(:,:,:,i));
    title(['Pred: ' num2str(YPred(i)) ' | True: ' num2str(YTest(i))]);
end