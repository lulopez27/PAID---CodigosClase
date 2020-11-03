%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;
%No funciona tan bien con baby_yoda, debido a la cantidad de curvas
#A = imread('baby_yoda.jpg'); 
A = imread('Columnas.jpg');
subplot(1,2,1);
imshow(A);
title('Img. Original');

%Calcular filtro direccional
B= [0 1 0; 0 0 0; 0 -1 0]; %Vertical
%B= [0 0 0; 1 0 -1; 0 0 0]; %Horizontal
A= double(A);

%Convolucion
C = conv2(A,B,'same'); %Detectar bordes
C = uint8(C);

subplot(1,2,2);
imshow(C);
title('Bordes Resaltados (Vertical)');
