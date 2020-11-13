%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

A = imread('../edificio_china.jpg');
subplot(1,3,1);
imshow(A);
title('Imagen Original');

%Ruido Aditivo
[m,n] = size(A);
alpha = 0.2;
N=alpha*randn(m,n);%matriz aleatoria distrib. normal
subplot(1,3,2);
imshow(N);
title('Ruido');

%Imagen con Ruido
A=im2double(A);
B=A+N;
B=im2uint8(B);
subplot(1,3,3);
imshow(B);
title('Imagen con Ruido');