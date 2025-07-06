%Guassian+Median Filtering
img1=imread('infrared-man.jpg');
img2=imread('infrared-dog.jpeg');
img3=imread('Infrared_house.jpeg');
img4=imread('Infrared_Rhino.jpeg');
img5=imread('Indrared_Road.jpeg');
newimg5=imresize(img5,[1080 1080]);
newimg1=imresize(img1,[1080 1080]);
newimg2=imresize(img2,[1080 1080]);
newimg3=imresize(img3,[1080 1080]);
newimg4=imresize(img4,[1080 1080]);
%gray conversion
gray1=rgb2gray(newimg1);
gray2=rgb2gray(newimg2);
gray3=rgb2gray(newimg3);
gray4=rgb2gray(newimg4);
gray5=rgb2gray(newimg5);
%Gaussian + Median filtering
gauss1 = imgaussfilt(gray1, 2);
gauss2 = imgaussfilt(gray2, 2);
gauss3 = imgaussfilt(gray3, 2);
gauss4 = imgaussfilt(gray4, 2);
gauss5 = imgaussfilt(gray5, 2);
medianFiltered1 = medfilt2(gauss1);
medianFiltered2 = medfilt2(gauss2);
medianFiltered3 = medfilt2(gauss3);
medianFiltered4 = medfilt2(gauss4);
medianFiltered5 = medfilt2(gauss5);
%histogram equalisation
equalized1 = histeq(medianFiltered1);
equalized2 = histeq(medianFiltered2);
equalized3 = histeq(medianFiltered3);
equalized4 = histeq(medianFiltered4);
equalized5 = histeq(medianFiltered5);
%Adaptivee Thresholding
binary1 = imbinarize(equalized1, 'adaptive', 'Sensitivity', 0.6);
binary2 = imbinarize(equalized2, 'adaptive', 'Sensitivity', 0.6);
binary3 = imbinarize(equalized3, 'adaptive', 'Sensitivity', 0.6);
binary4 = imbinarize(equalized4, 'adaptive', 'Sensitivity', 0.6);
binary5 = imbinarize(equalized5, 'adaptive', 'Sensitivity', 0.6);
%Nomalisation
normImg1 = mat2gray(double(equalized1));
normImg2 = mat2gray(double(equalized2));
normImg3 = mat2gray(double(equalized3));
normImg4 = mat2gray(double(equalized4));
normImg5 = mat2gray(double(equalized5));
I={normImg1,normImg2,normImg3,normImg4,normImg5};
montage(I);
imwrite(normImg1, 'normImg1.jpg')
imwrite(normImg2, 'normImg2.jpg')
imwrite(normImg3, 'normImg3.jpg')
imwrite(normImg4, 'normImg4.jpg')
imwrite(normImg5, 'normImg5.jpg')