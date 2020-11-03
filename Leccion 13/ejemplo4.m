%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;
A = imread('baby_yoda.jpg');
%A = imread('Columnas.jpg');
subplot(1,2,1);
imshow(A);
title('Img. Original');

%Calcular Sobel, ocupa dos mascaras
By= [-1 0 1; -2 0 2; -1 0 1]; %Vertical
Bx= [-1 -2 -1; 0 0 0; 1 2 1]; %Horizontal
A= double(A);

%Realizar las convoluciones
Ax = conv2(A,Bx,'same');
Ay = conv2(A,By,'same');

C = sqrt(Ax.^2+Ay.^2);
%C = uint8(-C+255);
C = uint8(C);
C = C+A;
subplot(1,2,2);
imshow(C);
title('Sobel');