clc; clear; close all;
pkg load image;

A  = imread('sydney.jpg');
subplot(2,2,1);
imshow(A);
title('Sydeney');

subplot (2,2,2);
imhist (A);
title("Histrograma de Sydney");


A=double(A);
rmin = min(min(A));
rmax = max(max(A));
B=255/(rmax-rmin) * (A-rmin);
B=uint8(B);
subplot(2,2,3);
imshow(B);
title('Imagen B');

subplot (2,2,4);
imhist (B);
title("Histrograma de B");