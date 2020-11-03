clc;
A = [1 0 1; 4 3 1; -1 0 -2];
B = [-1 1 2 3; -4 0 1 5];
[m1, n1] = size(A);
[m2, n2] = size(B);
C = zeros(m1+m2-1, n1+n2-1);
i=0;
for j = 1:m1+m2-1
    for k = 1:n1+n2-1
        sum_C = 0;
        P = [max([1 j-m2+1]),min([j m1])]
        for p = max([1 j-m2+1]):min([j m1])
            Q =[max([1 k-n2+1]),min([k n1])]
            for q = max([1 k-n2+1]):min([k n1])
                sum_C = sum_C + A(p,q)*B(j-p+1,k-q+1)
            endfor
        endfor
        C(j,k) = sum_C
        X = ["next ",int2str(i)];
        i++;
        display(X)
    endfor
endfor
display(C)