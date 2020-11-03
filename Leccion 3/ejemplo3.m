% Ejemplo de como limpiar una imagen con ruido

% Luis
pkg load image
A = imread('saturno_(5).jpg');
A = im2double(A);
subplot(1, 3, 1)
imshow(A)
title('Imagen Original')

%Agregar ruido
[m, n] = size(A);
N = randn(m, n);
Y = A + N;
Y1 = im2uint8(Y);
subplot(1, 3, 2)
imshow(Y)
title('Imagen con Ruido')

% Crear filtro
F = A * pinv(Y);
Arec = F * Y; % reconstrucción de la imagen
Arec = im2uint8(Arec);
subplot(1, 3, 3)
imshow(Arec)
title('Imagen reconstruida')