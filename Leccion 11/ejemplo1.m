%Ejemplo convolución en 1D
clc; clear; close all;
pkg load image;

x = rand(500,1); m = length(x);
y = rand(500,1); n = length(y);

z = zeros(m+n-1, 1);
tic
for i=1:m+n-1
  for j = max([1 i+1-n]):min([i m])
    z(i) = z(i)+x(j)*y(i-j+1);
  endfor
endfor
t1=toc
%display(z)

%comando de octave
tic
z2=conv(x,y);
t2=toc