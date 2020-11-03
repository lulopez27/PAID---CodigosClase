clc; clear; close all;
pkg load image;
A=imread('C:\TEC\2020 SII\PROCESAMIENTO Y ANALISIS DE IMAGENES DIGITALES GR 1\Lecciones\Leccion 1\barbara.jpg');
B=A(10:12,20:22,1);
C1=double(B);
C2=im2double(B);%toma los double y los divide entre 255
C3=uint8(C1);
C4=im2uint8(C2)