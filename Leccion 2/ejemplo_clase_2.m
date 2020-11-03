%Ehemplo para probar SVD

clc; clear;
A=rand(5,3);
s=svd(A);
[U,S,V]=svd(A); %U ->25 entradas, S->15,V->9, total:49.
[Ur,Sr,Vr]=svd(A,'econ'); % Ur->15 entradas,Sr->9,Vr->9, total:33.
V*V';
U*U';
U*S*V'
Ur*Sr*Vr'
A