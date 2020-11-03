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
for i=1:min([m n])
  deltax=i; deltay=i;
  for x=1:m
     for y=1:n
       x_t=x+deltax;
       y_t=y+deltay; #Transformacion Afin
       if and(x_t<=m,y_t<=n)
         B(x_t,y_t,:)=A(x,y,:); #Mover pixel de A a B
       endif
     endfor
  endfor
  pause(0.1)
  subplot(1,2,2);
  imshow(B);
  title('Imagen transladada');
endfor