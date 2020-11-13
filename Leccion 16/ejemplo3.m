%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

A = imread('../edificio_china.jpg');
subplot(1,2,1);
imshow(A);
title('Imagen Original');

%Calcular transformada
A = im2double(A);
F=fft2(A);
subplot(1,2,2);
imshow(log(1+abs(F)),[]);
title('DFT-2D');

%calcular la matriz de distancias D
[m,n] = size (A);
D=zeros(m,n);
for x=1:m
  for y=1:n
    D(x,y)=sqrt(x^2+y^2);
  endfor
endfor

%calcular Filtro Ideal
D0=50;
F_B = fftshift((D<=D0)); %matriz binaria. 1 si cumple la condición 0 si nonzeros

H=F.*F_B;
subplot(2,2,3);
imshow(log(1+abs(H)),[]);
title('Filtro aplicado en dom de frec');

%Devuelta al dominio espacial
H=fftshift(H);
A_r=ifft2(H);
subplot(2,2,4);
imshow(real(A_r));
title('Imagen filtrada');