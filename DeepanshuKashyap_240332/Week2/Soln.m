%% Image 1
I1=imread("blue.jpg");         % First image
R1=imresize(I1,[256,256]);     % Resizing to 256 x 256
Gr1=im2gray(R1);               % Converting to grayscale
H=fspecial("gaussian",500);   
Gs1=imfilter(Gr1,H);           % Gaussian blur
Sh1=imsharpen(Gs1);            % Sharpening
Hist1=histeq(Sh1);             % Histogram equalization
B1=imbinarize(Gr1);            % Binarize the image
show={R1,Gr1,Gs1,Sh1,Hist1,B1};
label=bwlabel(B1);             % Label connected components
montage(show)                  % Display all images simultaneously
figure

%% Image 2
I2=imread("Parrot.jpg");        % Second image
R2=imresize(I2,[256,256]);      % Resizing to 256 x 256
Gr2=im2gray(R2);                % Converting to grayscale
H2=fspecial("gaussian",5);                        
Gs2=imfilter(Gr2,H2);           % Gaussian blur
Sh2=imsharpen(Gs2);             % Sharpening
Hist2=histeq(Sh2);              % Histogram equalization                 
B2=imbinarize(Gr2);             % Binarize the image
show2={R2,Gr2,Gs2,Sh2,Hist2,B2};                        
label2=bwlabel(B2);             % Label connected components
montage(show2)                  % Display all images simultaneously