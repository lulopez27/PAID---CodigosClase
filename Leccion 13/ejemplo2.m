%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;
%No funciona tan bien con baby_yoda, debido a la cantidad de curvas
#A = imread('baby_yoda.jpg'); 
A = imread('Columnas.jpg');
subplot(1,2,1);
imshow(A);
title('Img. Original');

%Calcular laplaciano
#B= [1 0 1; 0 -4 0; 1 0 1]; %Laplaciano A
B= [1 1 1; 1 -8 1; 1 1 1]; %Laplaciano B
A= double(A);

%Convolucion
C = conv2(A,B,'same'); %Detectar bordes
alpha = -1; %0 1 -0.5 
D = A + alpha*C; %Marcar los bordes de A
D = uint8(D);

subplot(1,2,2);
imshow(D);
title('Bordes Resaltados (Laplaciano)');
