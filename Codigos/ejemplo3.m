%Ejemplo 3
A=[0 0 255 0 0;
   0 255 255 255 0;
   255 255 0 255 255;
   0 255 255 255 0;
   0 0 255 0 0;];
A=uint8(A);
subplot(1,2,1)
imshow(A)
title('Imagen Binaria')

B=[63 0 255 0 63;
   0 255 255 255 0;
   55 255 127 255 255;
   0 255 255 255 0;
   63 0 255 0 63;];
B=uint8(B);
subplot(1,2,2)
imshow(B)
title('Imagen Escala de Grises')