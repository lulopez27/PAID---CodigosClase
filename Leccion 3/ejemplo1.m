%Ejemplo de SVD en Imagenes
clc;clear; close all;
pkg load image

A =imread('imagen1.jpg');

%Nota cunado se aplica SVD, 
%se recomienda que este en formato double normalizado ([0,1])
A = im2double(A);
subplot(1,2,1)
imshow(A)
title('Orignal')
%tic
[U,S,V] = svd(A);
%toc
k = 50;
Uk = U(:,1:k);
Vk = V(:,1:k);
Sk = S(1:k,1:k);
Ak = Uk*Sk*Vk';
Ak = im2uint8(Ak);
subplot(1,2,2)
imshow(Ak)
title('K range')