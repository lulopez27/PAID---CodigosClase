A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\rgb_imagen.png');A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\rgb_imagen.png');
A=double(A);
subplot(2,2,1);
imshow(A)
title('Imagen con color');
Ar=A(:,:,1);%Canal Rojo
