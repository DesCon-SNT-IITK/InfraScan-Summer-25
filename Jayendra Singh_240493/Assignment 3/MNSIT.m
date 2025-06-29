%% assigment 3 Nueral Network on MNIST using Matlab

%% Loading the MNIST Dataset
[ XTrain , YTrain] = digitTrain4DArrayData ;
 [ XTest , YTest] = digitTest4DArrayData ;
 figure;
for i = 1:25
    subplot(5,5,i);  %% plotting the data
    imshow(XTrain(:, :, :, i));
    title(string(YTrain(i)));

end

%% Defining the Neural Network

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

%%  these are Training options

options = trainingOptions('adam', ...
    'MaxEpochs', 5, ...
    'InitialLearnRate', 1e-3, ...
    'Verbose', false, ...
    'Plots', 'training-progress');
%% Training the result 
net = trainNetwork(XTrain, YTrain, layers, options);

%%  Evaluation the program
YPred = classify(net, XTest);
accuracy = sum(YPred == YTest)/numel(YTest);
fprintf('Test Accuracy: %.2f%%\n', accuracy * 100);
