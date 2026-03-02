% Yeshwantrao Chavan College of Engineering
% Department of Electronics and Telecommunication Engineering
% Session EVEN 2023-24
% Name of Student:Rutuja Saharkar
clc;
clear all;
close all;
%% Experiment 7 : Image restoration using Mean Filters
%% Function for Airthmetic Mean filtering
% Filter Function 
% function out = amfilter(I, m, n)
% a = floor((m - 1) / 2);
% b = floor((n - 1) / 2);
% F = padarray(I, [a, b], 'replicate', 'both');
% [r, c] = size(F);
% out = zeros(r, c);
% for x = a + 1 : r - a
% for y = b + 1 : c - b
% for s = -a : a
% for t = -b : b
% out(x, y) = out(x, y) + F(x + s, y + t);
% end
% end
% out(x, y) = out(x, y) / (m * n);
% end
% end
% out = out(a + 1 : r - a, b + 1 : c - b);
% end
%% Function for Geometric Mean filtering
% Filter Function 
% function out = gmfilter(I,m,n)
% a = floor((m - 1) / 2);
% b = floor((n - 1) / 2);
% F = padarray(I, [a, b], 'replicate', 'both');
% [r,c] = size(F);
% out = ones(r,c);
% for x = (a + 1):(r - a)
% for y = (b + 1):(c - b)
% product = 1;
% for s = -a:a
% for t = -b:b
% product = product * F(x + s, y + t);
% end
% end
% out(x, y) = product ^ (1 / (m * n));
% end
% end
% out = out((a + 1):(r - a), (b + 1):(c - b));
% end
%% Excercise 1
% Read the image corrupted due to Gaussian Noise
Image = imread('Fig19_Gaussian.tif');
% Find its histogram
Hist1 = myhist(Image);
% Convert the image to double precision using im2double
IDouble = im2double(Image);
% Apply Arithmetic mean filter of size 3X3
arithmeticM = amfilter(IDouble,3,3);
% Apply Geometric mean filter of size 3X3
geometricM = gmfilter(IDouble, 3,3);
% Display the results in a 2x2 window
subplot(2,2,1),
imshow(Image), 
title('Corrupted Image')
subplot(2,2,2)
stem(Hist1)
title("Histogram")
subplot(2,2,3), 
imshow(arithmeticM),
title('Arithmetic Mean Filtered')
subplot(2,2,4), 
imshow(geometricM),
title('Geometric Mean Filtered')
%% Conclusion
% In this exercise we use arithmetic mean filter and geometric mean filter 
% to eliminate Guassian Noise Present in a corrupted image(original image),
% An arithmetic mean filter operation on an image removes short tailed noise
% Gaussian type noise from the image at the cost of blurring the image. 
% The arithmetic mean filter is defined as the average of all pixels within
% a local region of an image.The geometric mean filter is most widely used 
% to filter out Gaussian noise. In general it will help smooth the image 
% with less data loss than an arithmetic mean filter.   
%% Excercise 2
%Perform image restoration using arithmetic and geometric mean filer on
% image corrupted due to Uniform noise
% Read the image corrupted due to Unifrom Noise
Image1 = imread('Fig20_Uniform.tif');
% Find its histogram
Hist2 = myhist(Image1);
% Convert the image to double precision using im2double
IDouble1 = im2double(Image1);
% Apply Airthmetic mean and geometric mean filter of size 3X3
arithmeticM = amfilter(IDouble1,3,3);
geometricM = gmfilter(IDouble1,3,3);
% Display the results in a 2x2 window
subplot(2,2,1)
imshow(Image1) 
title(' uniform Noisy Image')
subplot(2,2,2)
stem(Hist2)
title("histogram")
subplot(2,2,3) 
imshow(arithmeticM)
title('Arithmetic Mean Filtered')
subplot(2,2,4) 
imshow(geometricM)
title('Geometric Mean Filtered')
%% Conclusion
% In this exercise we use arithmetic mean filter and geometric mean filter 
% to eliminate Uniform Noise Present in a corrupted image(original image),
% An arithmetic mean filter operation on an image removes short tailed noise
% Uniform type noise from the image at the cost of blurring the image. 
% The arithmetic mean filter is defined as the average of all pixels within
% a local region of an image.The geometric mean filter is most widely used 
% to filter out Uniform noise. In general it will help smooth the image 
% with less data loss than an arithmetic mean filter.  
%% Function for Harmonic Mean filtering
% Filter Function (comment form)
% function out = hmfilter(I, m, n)
% a = (m - 1) / 2;
% b = (n - 1) / 2;
% F = padarray(I, [a, b], 'replicate', 'both');
% [r,c] = size(F);
% out = zeros(r,c);
% for x = (a + 1):(r - a)
% for y = (b + 1):(c - b)
% for s = -a:a
% for t = -b:b
% out(x, y) = out(x, y) + (1 / F(x + s, y + t));
% end
% end
% out(x, y) = (m * n) / out(x, y);
% end
% end
% out = out((a + 1):(r - a), (b + 1):(c - b));
% end
%% Excercise 3
% Perform image restoration using harmonic mean filer on
% image corrupted due Salt Noise and Pepper Noise
% Read the image corrupted due to Salt Noise
Image2 = imread('Fig21_Salt.tif');
% Find its histogram
Hist3 = myhist(Image2);
% Convert the image to double precision using im2double
IDouble2 = im2double(Image2);
% Apply harmonic mean filter of size 3X3
harmonicM1=hmfilter (IDouble2,3,3);
% Read the image corrupted due to Pepper Noise
Image3 = imread('Fig22_Pepper.tif');
% Find its histogram
Hist4 = myhist(Image3);
% Convert the image to double precision using im2double
IDouble3 = im2double(Image3);
% Apply harmonic mean filter of size 3X3
harmonicM2=hmfilter (IDouble3,3,3);
% Disply the results in  3 X 2 Window
figure,
subplot(3,2,1);
imshow(Image2);
title('Original Salt Noise Image');
subplot(3,2,2);
imshow(Image3);
title('Original Pepper Noise Image');
subplot(3,2,3);
stem(Hist3);
title('Histogram of Salt Noise');
subplot(3,2,4);
stem(Hist4);
title('Histogram of Pepper Noise');
subplot(3,2,5);
imshow(harmonicM1);
title('Harmonic Filtered Image');
subplot(3,2,6);
imshow(harmonicM2);
title('Harmonic Filtered Image');
%% Conclusion
% The harmonic mean is a numerical average calculated by dividing the number 
% of observations,or entries in the series,by the reciprocal of each 
% number in the series.Thus,the harmonic mean is the reciprocal of the 
% arithmetic mean of the reciprocals.Harmonic mean filter is capable only
% to remove salt noise from an image.Pepper noise cannot be filtered using
% harmonic mean filter.
%% Function for Contra Harmonic Mean filtering
% Filter Function (comment form)
% function out = chmfilter(I, m, n, Q)
% a = (m - 1) / 2;
% b = (n - 1) / 2;
% F = padarray(I, [a, b], 'replicate', 'both');
% [r, c] = size(F);
% out = zeros(r, c);
% Nr = zeros(r, c);
% Dr = zeros(r, c);
% for x = (a + 1):(r - a)
% for y = (b + 1):(c - b)
% for s = -a:a
% for t = -b:b
% Nr(x, y) = Nr(x, y) + F(x + s, y + t) .^ (Q + 1);
% Dr(x, y) = Dr(x, y) + F(x + s, y + t) .^ Q;
% end
% end
% out(x, y) = Nr(x, y) / Dr(x, y);
% end
% end
% out = out((a + 1):(r - a), (b + 1):(c - b));
% end

%% Excercise 4
% Perform image restoration using contra harmonic mean filer on
% image corrupted due Salt Noise and Pepper Noise
% Read the image corrupted due to Salt Noise
Image4 = imread('Fig21_Salt.tif');
% Find its histogram
Hist5 = myhist(Image4);
% Convert the image to double precision using im2double
IDouble4 = im2double(Image4);
% Apply contra harmonic mean filter of size 3X3 with Q positive and Q
% negative
chms1=chmfilter(IDouble4,3,3,10);
chms2=chmfilter(IDouble4,3,3,-10);
% Read the image corrupted due to Pepper Noise
Image5 = imread('Fig22_Pepper.tif');
% Find its histogram
Hist6 = myhist(Image5);
% Convert the image to double precision using im2double
IDouble5 = im2double(Image5);
% Apply contra harmonic mean filter of size 3X3 with Q positive and Q
% negative
chms3=chmfilter(IDouble5,3,3,5);
chms4=chmfilter(IDouble5,3,3,-5);
% Disply the results
figure;
subplot(3,2,1);
imshow(Image4);
title('Original Salt Noise Image');
subplot(3,2,2);
imshow(Image5);
title('Original Pepper Noise image');
subplot(3,2,3);
imshow(chms1);
title('CHM filtered salt img Q+ve');
subplot(3,2,4);
imshow(chms3);
title('CHM filtered pepper img Q+ve');
subplot(3,2,5);
imshow(chms2);
title('CHM filtered salt img Q-ve');
subplot(3,2,6);
imshow(chms4);
title('CHM filtered pepper img Q-ve');
%% Conclusion
% A contraharmonic mean filter reduces or virtually eliminates the effects
% of salt-and-pepper noise. For positive values of Q, the filter eliminates
% pepper noise. For negative values of Q it eliminates salt noise. It 
% cannot do both simultaneously.The contraharmonic filter is simply the 
% arithmetic mean filter if Q = 0, and the harmonic mean filter if Q = −1.
% A larger region (filter size) yields a stronger filter effect with the 
% drawback of some blurring.
%% Excercise 5
% Perofrm harmonic and contraharmoic mean filtering (Q +Ve and -Ve) on
% image corrupted due to salt and pepper noise both.
I = imread('Fig23_Salt_Pepper.tif');
% Find its histogram
Hist7 = myhist(I);
% Convert the image to double precision using im2double
IDouble6 = im2double(I);
% Apply contra harmonic mean filter of size 3X3 with Q positive and Q
% negative
chms5=chmfilter(IDouble6,3,3,1);
chms6=chmfilter(IDouble6,3,3,-1);
% Apply harmonic mean filter of size 3X3
harmonicM3=hmfilter (IDouble6,3,3);
% Write your conclusion
figure,
subplot(2,3,1);
imshow(I)
title("Salt-pepper noise image")
subplot(2,3,[2,3]);
stem(Hist7)
title("Histogram image")
subplot(2,3,4);
imshow(chms5)
title("Q(+ve)")
subplot(2,3,5);
imshow(chms6)
title("Q(-ve)")
subplot(2,3,6);
imshow(harmonicM3)
title("Harmonic Image")
