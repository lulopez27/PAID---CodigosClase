clc; clear; close all;
pkg load image;

A  = imread('sydney.jpg');
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
%Ecualizacion
B=zeros(m,n);
A = double(A);
for x=1:m
  for y=1:n
    B(x,y)=round(ac(A(x,y)+1)*255);
  endfor
endfor
B=uint8(B);
subplot(2,2,3);
imshow(B);
title("Imagen ecualizada");

h2 = zeros(256,1);
for i=0:255
   h2(i+1) = sum(sum(B==i));
endfor
subplot(2,2,4);
bar(0:255,h2);
title('Histograma metodo 2');
xlim([0 255])