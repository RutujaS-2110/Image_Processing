% Yeshwantrao Chavan College of Engineering
% Department of Electronics and Telecommunication Engineering
% Session EVEN 2023-24
% Name of Student:Rutuja Saharkar 
clc;
clear all;
close all;
%% Experiment No.5-Spatial Domain Filtering (Low Pass Filtering)
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
%Effect of averaging and inreasing the size of mask
% Read the image
f = imread('Fig15.tif');

% Convert to double precision using im2double
f = im2double(f);

% Declare averaging masks of size 3x3, 7x7, and 9x9
mask_3x3 = ones(3,3) / 9;
mask_7x7 = ones(7,7) / 49;
mask_9x9 = ones(9,9) / 81;

% Call filtering function to obtain low pass filtered images
filtered_image_3x3 = myfilter(f, mask_3x3);
filtered_image_7x7 = myfilter(f, mask_7x7);
filtered_image_9x9 = myfilter(f, mask_9x9);

% Display original and three filtered images in a 2x2 figure window
figure;
subplot(2,2,1), 
imshow(f), 
title('Original Image');
subplot(2,2,2), 
imshow(filtered_image_3x3),
title('Filtered (3x3)');
subplot(2,2,3), 
imshow(filtered_image_7x7),
title('Filtered (7x7)');
subplot(2,2,4), 
imshow(filtered_image_9x9), 
title('Filtered (9x9)');
%% Conclusion
% In this exercise,we performed spatial filtering(low pass filtering)
% on original image with using various mask as 3x3,7x7,9x9 which is called
% as averaging masks or low pass filters replaces the intensity value of 
% the pixel under consideration with the average of the intensity values 
% of its neighbourhood.Original Image will get more and more blurred as we
% increases mask comparatively as observed 9x9 mask will provide more blur
% image as output than 3x3 and 7x7 mask.
%% Excercise 2
% Read the image
f = imread('Fig15.tif'); 

% Convert to double precision using im2double
f = im2double(f);

% Declare simple averaging mask and weighted averaging mask of size 5x5
simple_mask = ones(5,5) / 25; % Simple averaging mask
weighted_mask = fspecial('gaussian', [5 5], 2); % Weighted averaging mask

% Call filter function to obtain filtered image using simple averaging mask
simple_filtered_image = myfilter(f, simple_mask);

% Call filter function to obtain filtered image using weighted mask
weighted_filtered_image = myfilter(f, weighted_mask);

% Display the original image and filtered images
subplot(1,3,1), 
imshow(f), 
title('Original Image');
subplot(1,3,2), 
imshow(simple_filtered_image), 
title('Simple Averaging');
subplot(1,3,3), 
imshow(weighted_filtered_image), 
title('Weighted Averaging');
%% Conclusion
% In this exercise,we performed spatial filtering(low pass filtering)
% on original image with using mask of 5x5 which is called
% as averaging masks or low pass filters replaces the intensity value of 
% the pixel under consideration with the average of the intensity values 
% of its neighbourhood.Weighted average filter, in which pixels are 
% multiplied by different numbers. This gives more weightage to some pixels
% at the expense of others. We give more weight and importance to the 
% center value. Then,it is multiplied by a higher value than any other 
% value in the mask.This gives this pixel a higher contribution and impact
% than the other pixels. It also helps us to control the blurriness of the 
% image.
