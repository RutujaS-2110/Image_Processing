% Yeshwantrao Chavan College of Engineering
% Department of Electronics and Telecommunication Engineering
% Session EVEN 2023-24
% Name of Student:Rutuja Saharkar
clc;
clear all;
close all;
%% Experiment 6:Spatial Domain Filtering (High Pass Filtering)
%% Function for filtering
%Filter Function 
%function[g]=myfilter(f,mask)
%[m,n]=size of mask
%a=(m-1)/2;
%b=(n-1)/2;
%f1=padarray(f,[a b],"replicate","both")
%[r c]=size of f1
%g=zeros(r,c);
%for x=a+1:r-a
%for y=b+1:c-b
%for s=-a:a
%for t=-b:b
%g(x,y)=g(x,y)+f(x+s,y+t)*mask(s+a+1,t+b+1)
%end
%end
%end
%end
%g=g(a+1:r-a,b+1:c-b);
%end 
%% Excercise 1
%Perform image enhancement using Laplacian 
% Read the image
f = imread('Fig16.tif');
% Convert to double precision using im2double
f = im2double(f);
% Declare isotropic laplacian mask of size 3X3 with centered postive
laplacian_mask = [-1 -1 -1;-1 8 -1;-1 -1 -1];
% Call filtering function to obtain laplacian image
laplacian_image = myfilter(f, laplacian_mask);
% Add laplacian image with orginal to get enhaced image
enhanced_image = f + laplacian_image;
% Display original image, Laplacian image and enhanced image in 2x2 window
subplot(2,2,[1,2]), 
imshow(f), 
title('Original Image');
subplot(2,2,3), 
imshow(laplacian_image),
title('Laplacian Image');
subplot(2,2,4), 
imshow(enhanced_image), 
title('Enhanced Image');
%% Excercise 2
%Perform image enhancement using Laplacian
% Read the image
f = imread('Fig16.tif');
% Convert to double precision using im2double
f = im2double(f);
% Declare isotropic laplacian mask of size 3X3 with centered negative
laplacian_mask = [1 1 1;1 -8 1;1 1 1];
% Call filtering function to obtain laplacian image
laplacian_image = myfilter(f, laplacian_mask);
% subtract laplacian image with orginal to get enhaced image
enhanced_image = f - laplacian_image;
% Display original image, Laplacian image and enhanced image in 2x2 window
subplot(2,2,[1,2]), 
imshow(f), 
title('Original Image');
subplot(2,2,3), 
imshow(laplacian_image),
title('Laplacian Image');
subplot(2,2,4), 
imshow(enhanced_image), 
title('Enhanced Image');
%% Excercise 3
%Perform image enhancement using Laplacian 
% Read the image
f = imread('Fig16.tif');
% Convert to double precision using im2double
f = im2double(f);
% Declare laplacian mask isotropic in +-90 of size 3X3 with centered postive
laplacian_mask = [0 -1 0;-1 4 -1;0 -1 0];
% Call filtering function to obtain laplacian image
laplacian_image = myfilter(f, laplacian_mask);
% Add laplacian image with orginal to get enhaced image
enhanced_image = f + laplacian_image;
% Display original image, Laplacian image and enhanced image in 2x2 window
subplot(2,2,[1,2]), 
imshow(f), 
title('Original Image');
subplot(2,2,3), 
imshow(laplacian_image),
title('Laplacian Image');
subplot(2,2,4), 
imshow(enhanced_image), 
title('Enhanced Image');
%% Excercise 4
%Perform image enhancement using Laplacian
% Read the image
f = imread('Fig16.tif');
% Convert to double precision using im2double
f = im2double(f);
% Declare laplacian mask isotropic in +-90 of size 3X3 with centered negative
laplacian_mask = [0 1 0;1 -4 1;0 1 0];
% Call filtering function to obtain laplacian image
laplacian_image = myfilter(f, laplacian_mask);
% subtract laplacian image with orginal to get enhaced image
enhanced_image = f - laplacian_image;
% Display original image, Laplacian image and enhanced image in 2x2 window
subplot(2,2,[1,2]), 
imshow(f), 
title('Original Image');
subplot(2,2,3), 
imshow(laplacian_image),
title('Laplacian Image');
subplot(2,2,4), 
imshow(enhanced_image), 
title('Enhanced Image');
%% Conclusion:
% The Laplacian of an image highlights regions of rapid intensity change 
% and is an example of a second order or a second derivative method of 
% enhancement. It is particularly good at finding the fine details of an 
% image. Any feature with a sharp discontinuity will be enhanced by a 
% Laplacian operator.
%% Excercise 5
%Perform image enhancement using Gradient
% Read the image
f = imread("circuit.tif");
% Convert to double precision using im2double
f = im2double(f);
% Declare Prewit Mask in Horizontal and Vertical Direction
prewitt_mask_x = [-1 -1 -1; 0 0 0; 1 1 1];
prewitt_mask_y = [-1 0 1; -1 0 1; -1 0 1];
% Call filter function to obtain filtered images
filtered_image_x = myfilter(f,prewitt_mask_x);
filtered_image_y = myfilter(f,prewitt_mask_y);
% Obtain Gradient image using G=|Gx|+|Gy|
gradient_image = abs(filtered_image_x) + abs(filtered_image_y);
% Display the orginal image and Gradient images in 2X2 Window
subplot(2, 2, 1),
imshow(f),
title('Original Image');
subplot(2, 2, 3),
imshow(filtered_image_x),
title('Filtered Image (Horizontal)');
subplot(2, 2, 4), 
imshow(filtered_image_y), 
title('Filtered Image (Vertical)');
subplot(2, 2, 2), 
imshow(gradient_image), 
title('Gradient Image');
%% Conclusion
% Prewitt operator is used for edge detection in an image.Wherever there is
% a sudden change in pixel intensities, an edge is detected by the mask. 
% Since the edge is defined as the change in pixel intensities, it can be
% calculated by using differentiation. Prewitt mask is a first-order 
% derivative mask.Prewitt operator provides us two masks one for detecting
% edges in the horizontal direction and another for detecting edges in a 
% vertical direction.
%% Excercise 6
%Perform image enhancement using Gradient
% Read the image
f = imread("Fig17.tif");
% Convert to double precision using im2double
f = im2double(f);
% Declare Sobel Mask in +-45 Direction
sobel_mask_45=[-1 0 1;-2 0 2;-1 0 1];
sobel_mask_minus45=[-1 -2 -1;0 0 0;1 2 1];
% Call filter function to obtain filtered images
filtered_image_45 = myfilter(f,sobel_mask_45);
filtered_image_minus45 = myfilter(f,sobel_mask_minus45);
% Obtain Gradient image using G=|G45|+|G-45|
gradient_image = abs(filtered_image_45) + abs(filtered_image_minus45);
% Display the orginal image and Gradient images in 2X2 Window
subplot(2, 2, 1),
imshow(f),
title('Original Image');
subplot(2, 2, 3),
imshow(filtered_image_45),
title('|G-45|');
subplot(2, 2, 4), 
imshow(filtered_image_minus45), 
title('|G+45|');
subplot(2, 2, 2), 
imshow(gradient_image), 
title('Gradient Image');
%% Conclusion
% Like the Prewitt operator Sobel operator is also used to detect two kinds
% of edges in an image i.e Vertical direction and Horizontal direction. The
% difference between Sobel and Prewitt Operator is that in Sobel operator 
% the coefficients of masks are adjustable according to our requirement 
% provided they follow all properties of derivative masks.
%% Excercise 7
%Perform image enhancement using unsharpmasking and highboost filtering
% Read the image
I = imread("Fig18.tif");
% Convert to double precision using im2double
I = im2double(I);
% Generate mask for unsharp masking
avg_mask=ones(3,3)/9;
f=[0 0 0;0 1 0;0 0 0];
g_mask=imsubtract(f,avg_mask);
unsharp_mask=imadd(f,g_mask);
% Generate mask for highboost filtering with k>1 (Select any value)
hbstgmsk=imadd(f,10*g_mask);
% Call filter function to obtain unsharp masking image
unsharp_image=myfilter(I,unsharp_mask);
% Call filter function to obtain high boost filtered image
hbst_image=myfilter(I,hbstgmsk);
% Display the orginal image, unsharp masked and highboost filtered image
subplot(3, 1, 1),
imshow(I),
title('Original Image');
subplot(3, 1, 2),
imshow(unsharp_image),
title('unsharp masking image');
subplot(3, 1, 3), 
imshow(hbst_image), 
title('high boost filtered image');
%% Conclusion
% Unsharp masking is defined as obtaining a highpass filtered image by 
% subtracting from the given image a lowpass filtered version of itself 
% while high-boost filtering generalizes it by multiplying the input image 
% by a constant, say K≥1.