clc; clear; close all;
pkg load image;

A  = imread('boat.jpg');
%A=imresize(A,[128,128]);
subplot(1,2,1);
imshow(A);
title('Imagen Original');

[m,n] = size(A);

A= double(A); %Para multiplicar decimales
B= zeros(m,n);
c=0.5; b=20;
##for x=1:m
##  for y=1:n
##    B(x,y)=c*A(x,y)+b;
##  endfor
##endfor
##B=c*A+b; %Lo mismo de arriba
b=0;
for c=10:-0.5:0
  B=c*A-b;
  B= uint8(B);
  subplot(1,2,2);
  imshow(B);
  title('Imagen Alterada');
  pause(0.1);
endfor