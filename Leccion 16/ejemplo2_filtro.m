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

%Imagen con Ruido
A=im2double(A);
B=A+N;
B1=im2uint8(B);
subplot(1,3,2);
imshow(B1);
title('Imagen con Ruido');

%Imagen sin ruido

A_t = zeros(m,n);
for x=2:m-1
  for y = 2:n-1
    Wf1 = B(x-1,y-1)+B(x-1,y)+B(x-1,y+1);
    Wf2 = B(x,y-1)+B(x,y)+B(x,y+1);
    Wf3 = B(x+1,y-1)+B(x+1,y)+B(x+1,y+1);
    A_t(x,y) =(1/9)*(Wf1+Wf2+Wf3);
  endfor
endfor
A_t = im2uint8(A_t);
subplot(1,3,3);
imshow(A_t);
title('Imagen sin Ruido');