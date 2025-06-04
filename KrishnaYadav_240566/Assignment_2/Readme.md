Steps Performed:

    Resize: Image resized to 256x256 for uniformity.

    Grayscale Conversion: Converted RGB to grayscale to simplify processing.

    Gaussian Blur: Applied to reduce noise using a kernel with σ = 2.

    Sharpening: Enhanced image edges using MATLAB’s imsharpen.

    Histogram Equalization: Improved contrast using histeq.

    Binarization: Converted grayscale to binary using adaptive thresholding.

    Labeling: Used bwlabel to mark connected regions in binary image.

Observations:

    The Gaussian blur smooths the image, reducing noise before sharpening.

    Histogram equalization enhances contrast effectively.

    Final labeling step identifies distinct object regions.

    
