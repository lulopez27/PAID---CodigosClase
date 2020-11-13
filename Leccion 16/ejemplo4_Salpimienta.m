%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

A = imread('../edificio_china.jpg');
subplot(1,2,1);
imshow(A);
title('Imagen Original');

%Ruido Sal y pimienta
B = imnoise(A,'salt & pepper',0.5);
subplot(1,2,2);
imshow(B);
title('Imagen con ruido');