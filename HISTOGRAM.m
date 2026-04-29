% Yeshwantrao Chavan College of Engineering
% Name of Student: Rutuja Saharkar
% Roll No.: 118
% Class/Section: 3rd year/B
% Course Name: Signal and Systems
% Course Code: ET-2303
% Topic: Histogram Matching

%% HISTOGRAM MATCHING EXAMPLE.NO-01
clc
clear all
close all

% function mattu=myown(p,q)
% M = zeros(256,1,'uint8'); 
% hist1 = imhist(p); 
% hist2 = imhist(q);
% cdf1 = cumsum(hist1) / numel(p);
% cdf2 = cumsum(hist2) / numel(q);
% for idx = 1 : 256
% [~,ind] = min(abs(cdf1(idx) - cdf2));
% M(idx) = ind-1;
% end
% [H, W] = size(p);
% mattu=zeros(H,W,'uint8');
% for x = 1: H 
% for y = 1:W
% mattu(x,y) =M(double(p(x,y))+1);
% end
% end
% end
warning off
im1=imread('yellowlily.jpg');
im2=imread('colourful peacock.jpeg');
r1=im1(:,:,1);
g1=im1(:,:,2);
b1=im1(:,:,3);
r2=im2(:,:,1);
g2=im2(:,:,2);
b2=im2(:,:,3);
a=myown(r1,r2);
b=myown(g1,g2);
c=myown(b1,b2);
figure(1);
imshow(im1);
title('first image');
figure(2);
imshow(im2);
title('second image');
d=cat(3,a,b,c);
figure(3);
imshow(d);
title('output image');
%% HISTOGRAM MATCHING EXAMPLE.NO-02

im3=imread('cat.jpeg');
im4=imread('FOREST.jpg');
r3=im3(:,:,1);
g3=im3(:,:,2);
b3=im3(:,:,3);
r4=im4(:,:,1);
g4=im4(:,:,2);
b4=im4(:,:,3);
a=myown(r3,r4);
b=myown(g3,g4);
c=myown(b3,b4);
figure(4);
imshow(im3);
title('first image');
figure(5);
imshow(im4);
title('second image');
d=cat(3,a,b,c);
figure(6);
imshow(d);
title('output image');
