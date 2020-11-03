% Emanuel\n
    % Limpiar  una imagen usando imágenes de entrenamiento\n
    A = imread('Leccion3\\saturno_(1).jpg');
    [m, n] = size(A);
    s = 20; % numero de muestras
    
    A_bd = zeros(m, n, s);
    for i = 1: s
        t = ['Leccion3\\saturnno_(' num2str(i) ').jpg'];
        Aux = imread(t)
        A_bd(:, :, i) = im2double(Aux);
        Y_bd(:, :, i) = A_bd(:,:,i)+0.25*randn(m,n);
        ai=reshape(A_bd(:,:,i),[m*n 1]);
        A(:,i)=ai;
        yi=reshape(Y_bd(:,:,i),[m*n 1]);
        Y(:,i)=yi;
    end
    
%calcular el filtro F
F=A*pinv(Y)

%Necesitamos una imagen con ruido, se pareza a la que estan end
%matriz Y_bd
Y_new_w_noise = Y_bd(:,:,5);
subplot(1,2,1)
imshow(Y_new_w_noise)
% Paso 1 Vectorizar Ynew
y_nr = reshape(Y_new_w_noise, [m*n 1]);
% Paso 2 Multiploicar por el filtro F
a_rec = F*y_nr;
% Paso 3 Redimenzionar vector con una matriz_type
A_rec = reshape (a_rec, [m n] );

subplot(1,2,2)
imshow(A_rec)