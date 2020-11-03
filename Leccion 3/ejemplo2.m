%Ejemplo de SVD en Imagenes
clc;clear; close all;
pkg load image
A =imread('imagen1.jpg');
%Nota cunado se aplica SVD, 
%se recomienda que este en formato double normalizado ([0,1])
A = im2double(A);
s= svd(A);
%s(end-5:end); %mostrar los ultimos 5 valores
%plot(1:length(s),s)% valores de la matrices, notar que los valores importantes estan entre 0 y 200.
