% Phan The Anh - 20204941
% 7/6/2022
% Bài 5.4
x = [-2, 0, 4];
f = [0,3,4];
N = length(x);
sumx1 = sum(exp(x));
sumx2 = sum(exp(2*x));
sumfx = sum(f.*exp(x));
sumf = sum(f);
A = [sumx2, sumx1; sumx1 N];
B = [sumfx ; sumf];
result = inv(A)*B
