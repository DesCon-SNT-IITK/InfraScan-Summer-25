function trainDeepCrackUNet()
    % Define classes and pixel label IDs
    classes = ["crack", "background"];
    labelIDs = [255, 0];

    % Image input size and number of classes
    imageSize = [256 256 3];
    numClasses = 2;

    % Load prepared datastores (must run mainDeepCrackPipeline first)
    load('cdsTransformed.mat', 'cdsTransformed'); % if you saved it earlier

    % Create U-Net
    lgraph = unetLayers(imageSize, numClasses);

    % Training options
    options = trainingOptions('adam', ...
    'MaxEpochs', 1, ...  
    'MiniBatchSize', 8, ...
    'Shuffle', 'every-epoch', ...
    'Verbose', true, ...
    'Plots', 'training-progress');

    % Train network
    fprintf('🚀 Starting training...\n');
    net = trainNetwork(cdsTransformed, lgraph, options);
    fprintf('✅ Training complete!\n');

    % Save trained network
    save('trainedDeepCrackNet.mat', 'net');
end
