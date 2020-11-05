%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;
%No funciona tan bien con baby_yoda, debido a  de curvas 
m =20; n =30;
A=rand(m,n); #Matriz aleatoria tamanho n x m
subplot(1,3,1);
imshow(A);
title('Dominio Espacial');
#IMplementacion de DFT-2d, usando formula original
tic;
F = zeros(m,n);
for u = 1:m #filas
  for v = 1:n #columna
    #calcular doble suma
    for x=0:m-1
       for y=0:n-1
         F(u,v)=F(u,v)+A(x+1,y+1)*exp(-1i*2*pi*(u*x/m+v*y/n));
       endfor
     endfor
  endfor
endfor
t1 = toc

subplot(1,3,2);
imshow(abs(F));
title('Dominio Frecuencia (metodo 1)')

#Comando Octave
tic
Aux=fft2(A);
F1=[];
#Para que Aux = F, se debe 
#reordenar las filas
#flip a cada columna
#calcular conjugado 
for j=1:m
  F1(j,:)=flip(Aux(m-j+1,:)');
endfor
subplot(1,3,3);
imshow(abs(F1));
title('Dominio Frecuencia (metodo 1)')
t2=toc