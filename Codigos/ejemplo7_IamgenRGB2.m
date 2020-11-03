A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\rgb_imagen.png');
A=im2double(A);
[m,n,r]=size(A);
subplot(2,2,1);
imshow(A)
title('Imagen a Colores')
Ceros=zeros(m,n);

%Canal Rojo
A_r=zeros(m,n,3);
A_r(:,:,1)=A(:,:,1);%canal rojo
A_r(:,:,2)=Ceros;
A_r(:,:,3)=Ceros;
subplot(2,2,2);
imshow(A_r)
title('Solo el componente rojo')