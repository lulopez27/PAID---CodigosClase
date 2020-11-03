%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

A = imread('baby_yoda.jpg');
subplot(1,2,1);
imshow(A);
title('Img. Original');

%Mascara del Filtro promedio
k=25;
B=(1/k^2)*ones(k); %ones(k) crea un matriz de kxk de 1's
A = double(A);

for i=1:50
  A = conv2(A,B,'same');
endfor
C=A;
C= uint8(C);
subplot(1,2,2);
imshow(C);
title('Filtro Promedio');