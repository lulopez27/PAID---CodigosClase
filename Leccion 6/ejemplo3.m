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
angulo=13;
a0= cosd(angulo);#d for degrees
a1= sind(angulo);
b0=-sind(angulo);
b1= cosd(angulo);
xc=floor(m/2);
yc=floor(n/2);
for x=1:m
  for y=1:n
    x_t=mod(round(a0*(x-xc)+a1*(y-yc)+xc+1),m); #Valor entre 0 y m-1 MODULO m redondeado
    y_t=mod(round(b0*(x-xc)+b1*(y-yc)+yc+1),n); #Valor entre 0 y n-1 MODULO n redondiado
    x_aux=round(a0*(x-xc)+a1*(y-yc)+xc+1);
    y_aux=round(b0*(x-xc)+b1*(y-yc)+yc+1); #lo mismo de arriba sin el modulo
    if and(x_t==x_aux,y_t==y_aux)
      B(x_t+1,y_t+1,:)=A(x,y,:);#+1 porque comienza en 1
    endif
   endfor
endfor
subplot(1,2,2);
imshow(B);
title('Imagen rotada');
