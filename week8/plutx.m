% Phan Th? Anh - 20204941

% 
function [L,U,p] = plutx(A,n)
% Ma tr?n vu�ng nxn
% L?u ?? l?n c?a m?ng A
[n,n] = size(A);
% Thi?t l?p ma tr?n p c?p nx1 v?i gi� tr? t? 1 -> n
p = (1:n)';
for k = 1:n-1
    % G�n [r,m] = Gi� tr? c� ?? l?n nh?t t? h�ng k --> n trong c?t k
    [r,m] = max(abs(A(k:n,k)));
    m = m + k -1;
    if (A(m,k) ~= 0)
        if ( m ~= 0)
            A([k m],:) = A([m k],:);
            p([k m])= p([m k]);
        end
        i = k +1: n ;
        A(i,k)= A (i,k)/ A(k,k);
        j = k+1 : n ;
        A(i,j)= A(i,j) - A(i,k)*A(k,j);
    end
end
L = tril(A,-1)+eye(n,n);
U = triu(A);
end