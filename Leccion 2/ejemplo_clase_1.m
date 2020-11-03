clc; clear;
pkg load image
pkg load video

V = VideoReader('video_original.mp4')
fr= V.NumberOfFrames %# frames
mf=V.Height; nc=V.Width; %Dimensiones
m=round(mf/3); n=round(nc/3);
Y=uint8(zeros(m,n,3,fr));

% Leer video y guardar frames en matriz y
for i=1:fr
  Z1 = readFrame(V);
  Y(:,:,1,i)=imresize(Z1(:,:,1),[ m n]);%canal rojo
  Y(:,:,2,i)= zeros(m,n);%imresize(Z1(:,:,2),[ m n]);%canal verde zeros(m,n)
  Y(:,:,3,i)= zeros(m,n);%imresize(Z1(:,:,3),[ m n]);%canal azul
endfor

imshow(Y(:,:,:,50))

%Video a partir de un conjunto de imagenes

video=VideoWriter('video_salida.mp4');
for i=1:fr
  writeVideo(video,Y(:,:,:,i))
endfor
close(video)