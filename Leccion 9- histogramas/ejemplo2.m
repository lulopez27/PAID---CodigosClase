clc; clear; close all;
pkg load image;

A  = imread('peppers.jpg');
subplot(2,2,1);
imshow(A);
title('Imagen Original');

%2nda forma
h = zeros(256,1);
for i=0:255
   h(i+1) = sum(sum(A==i));
endfor
subplot(2,2,2);
bar(0:255,h);
title('Histograma metodo 2');
xlim([0 255])

%Disctriducion acumulada
ac=zeros(256,1);
[m, n] = size(A);
for i=0:255
  ac(i+1)= sum(h(1:i+1))/(m*n);  
endfor
subplot(2,2,3);
bar(0:255,ac);
title('Disctribucion acumalada');
xlim([0 255])