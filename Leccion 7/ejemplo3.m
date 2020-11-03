clc; clear; close all;
pkg load image;

A  = imread('boat_new.jpg');
subplot(1,2,1);
imshow(A);
title('Imagen Original');

[m,n] = size(A);

A= double(A); %Para multiplicar decimales

rmax = max(max(A));
rmin = min(min(A));
c= 255/(rmax-rmin);
b= -c*rmin;

B=c*A+b;

B= uint8(B);
subplot(1,2,2);
imshow(B);
title('Autocontraste');
