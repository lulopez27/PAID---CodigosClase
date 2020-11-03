clc; clear; close all;
pkg load image;

A  = imread('peppers.jpg');
subplot(2,2,1);
imshow(A);
title('Imagen Original');
%3 formas de calcular el histograma
%1era Forma feruza bruta
tic
h1 = zeros(256,1);
[m,n]=size(A);
for x= 1:m
  for y=1:n
     h1(A(x,y)+1)=h1(A(x,y)+1)+1;
  endfor
endfor
t1=toc
subplot(2,2,2);
bar(0:255,h1);
title('Histograma metodo 1');
xlim([0 255])
%2nda forma
tic
h2 = zeros(256,1);
for i=0:255
   h2(i+1) = sum(sum(A==i));
endfor
t2=toc
subplot(2,2,3);
bar(0:255,h1);
title('Histograma metodo 2');
xlim([0 255])


%3ra forma
tic
subplot(2,2,4);
imhist(A)
%h3 = imhist(A) %to not show it 
title('Histograma metodo 3');
t3=toc