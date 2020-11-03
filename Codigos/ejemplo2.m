%Ejemplo 2

A=[0 0 1 0 0;
   0 1 1 1 0;
   1 1 0 1 1;
   0 1 1 1 0;
   0 0 1 0 0;];
subplot(1,2,1)
imshow(A)
title('Imagen Binaria')

B=[0.25  0 1 0 0.25;
   0 1 1 1 0;
   0 0 0.5 0 0;
   0 1 1 1 0;
   0.25 0 1 0 0.25;];
subplot(1,2,1)
imshow(B)
title('Escala de grises')
