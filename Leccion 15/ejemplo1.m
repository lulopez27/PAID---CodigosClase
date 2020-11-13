%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

A = imread('../chest.jpg');
subplot(1,3,1);
imshow(A);
title('Imagen Original');

%Calcular transformada
A = im2double(A);
F=fft2(A);
subplot(1,3,2);
imshow(log(1+abs(F)),[]);
title('DFT-2D');

F_shift=fftshift(F);
subplot(1,3,3);
imshow(log(1+abs(F_shift)),[]);
title('DFT-2D - Shift');