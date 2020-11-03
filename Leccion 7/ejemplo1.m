clc; clear; close all;
pkg load image;

A  = imread('barbara.jpg');
A=imresize(A,[128,128]);
subplot(1,2,1);
imshow(A);
title('Imagen Original');

#Traslacion deltax y deltay de la imagen
[m,n,r] = size(A);
B=uint8(zeros(m,n,r));
Lx=Ly=75;
Ax=Ay=15;
for x=1:m
  for y=1:n
    x_t=mod(round(x+Ax*sin((2*pi*y)/Lx)),m); #Valor entre 0 y m-1 MODULO m redondeado
    y_t=mod(round(y+Ay*sin((2*pi*x)/Ly)),n); #Valor entre 0 y n-1 MODULO n redondiado #lo mismo de arriba sin el modulo
    x_aux=round(x+Ax*sin((2*pi*y)/Lx));
    y_aux=round(y+Ay*sin((2*pi*x)/Ly));
    if and(x_t==x_aux,y_t==y_aux)
      B(x_t+1,y_t+1,:) = A(x,y,:);
    endif
   endfor
endfor
subplot(1,2,2);
imshow(B);
title('Imagen con Rippling');
