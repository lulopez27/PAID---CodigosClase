A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\camarografo.jpg');
subplot(1,2,1)
imshow(A)
title('Imagen - Escala de Grises')
size(A)
subplot(1,2,2)
A_bloque=A(125:135,225:235)
class(A)
imshow(A_bloque)
title('Imagen - Bloque')