A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\rgb_imagen.png');
A=double(A);
subplot(2,2,1)
imshow(A)
title('Imagen a colores')
Ar=A(:,:,1)
size(A)
subplot(1,2,2)
A_bloque=A(125:135,225:235)
class(A)
imshow(A_bloque)
title('Imagen - Bloque')