clc; clear; close all;
pkg load image;

A  = imread('peppers.jpg');
subplot(2,2,1);
imshow(A);
title('Imagen original');

subplot (2,2,2);
imhist (A);
title("Histrograma de la imagen original");


A=double(A);
rmin = min(min(A));
rmax = max(max(A));
s_min = rmin+50; %smin debe ser mas grande que rmin
s_max = rmax-50; %smax debe ser mas pequeno que rmax

B=(s_max-s_min)/(rmax-rmin) * (A-rmin)+s_min;
B=uint8(B);
subplot(2,2,3);
imshow(B);
title('Imagen B');

subplot (2,2,4);
imhist (B);
title("Histrograma de B");