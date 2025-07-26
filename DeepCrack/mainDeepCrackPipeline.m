clear all;
clc;
% Run preprocessing
resizeImages();

% Setup datastores
outputImgDir = 'DeepCrack/train_img_resized';
outputMaskDir = 'DeepCrack/train_mask_resized';

fprintf('📦 Preparing datastores...\n');

imds = imageDatastore(outputImgDir);
pxds = pixelLabelDatastore(outputMaskDir, ["crack", "background"], [255, 0]);

% Optional: Pair and apply preprocessing
imageSize = [256, 256];
cds = combine(imds, pxds);
cdsTransformed = transform(cds, @(data) preprocessData(data, imageSize));

fprintf('✅ Pipeline setup complete. Ready for training!\n');

save('cdsTransformed.mat', 'cdsTransformed');
