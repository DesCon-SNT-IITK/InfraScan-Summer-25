% Load MNIST digit data (images and labels)
[XTrain, YTrain] = digitTrain4DArrayData;
[XTest, YTest]   = digitTest4DArrayData;

% Visualize the first 25 training images with labels
figure
tiledlayout(5,5, 'Padding', 'compact', 'TileSpacing', 'compact');

for i = 1:25
    nexttile
    imshow(XTrain(:,:,:,i));
    title("Label: " + string(YTrain(i)), 'FontSize', 10);

end
%Defining the Neural Network
 layers = [
    imageInputLayer([28 28 1], 'Name', 'input')

    convolution2dLayer(3, 8, 'Padding', 'same', 'Name', 'conv_1')
    batchNormalizationLayer('Name', 'bn_1')
    reluLayer('Name', 'relu_1')
    maxPooling2dLayer(2, 'Stride', 2, 'Name', 'maxpool_1')

    convolution2dLayer(3, 16, 'Padding', 'same', 'Name', 'conv_2')
    batchNormalizationLayer('Name', 'bn_2')
    reluLayer('Name', 'relu_2')
    maxPooling2dLayer(2, 'Stride', 2, 'Name', 'maxpool_2')

    convolution2dLayer(3, 32, 'Padding', 'same', 'Name', 'conv_3')
    batchNormalizationLayer('Name', 'bn_3')
    reluLayer('Name', 'relu_3')

    fullyConnectedLayer(64, 'Name', 'fc1')
    reluLayer('Name', 'relu_fc1')
    dropoutLayer(0.3, 'Name', 'dropout')

    fullyConnectedLayer(10, 'Name', 'fc_output')
    softmaxLayer('Name', 'softmax')
    classificationLayer('Name', 'output')
];
 %Training the Network
options = trainingOptions('adam', ...
    'MaxEpochs', 5, ...
    'InitialLearnRate', 1e-3, ...
    'Verbose', false, ...
    'Plots', 'training-progress');

net = trainNetwork(XTrain, YTrain, layers, options);
% Testing and Results
YPred = classify(net, XTest);
accuracy = sum(YPred == YTest) / numel(YTest);
fprintf('Test Accuracy: %.2f%%\n', accuracy * 100);


