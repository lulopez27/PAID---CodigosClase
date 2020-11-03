clc; clear; close all;
pkg load image;

A  = imread('boat_new.jpg');
subplot(1,2,1);
imshow(A);

A=double(A);
c=1.5;gamma=1;
% c>1, clara, c1<0 oscurece
%gamma>1 aclara, gamma<1 oscurece

B=c*A.^gamma; %El .^ sirve para elevar puntualmente, si no se hace por matriz
B=uint8(B);

subplot(1,2,2);
imshow(B);