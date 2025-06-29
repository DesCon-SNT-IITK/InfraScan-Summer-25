% MNIST Neural Network in MATLAB
% Infrascan, Descon Society - June 25, 2025

%% Load and visualize data
[XTrain, YTrain] = digitTrain4DArrayData;
[XTest, YTest] = digitTest4DArrayData;

figure;
for i = 1:25
    subplot(5,5,i);
    imshow(XTrain(:, :, :, i));
    title(string(YTrain(i)));
end

%% Define the CNN
layers = [
    imageInputLayer([28 28 1])
    convolution2dLayer(3, 8, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)

    convolution2dLayer(3, 16, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer

    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer
];

%% Training Options
options = trainingOptions('adam', ...
    'MaxEpochs', 5, ...
    'InitialLearnRate', 1e-3, ...
    'Verbose', false, ...
    'Plots', 'training-progress');

%% Train the Network
net = trainNetwork(XTrain, YTrain, layers, options);

%% Evaluate the Network
YPred = classify(net, XTest);
accuracy = sum(YPred == YTest) / numel(YTest);
fprintf('Test Accuracy: %.2f%%\\n', accuracy * 100);
