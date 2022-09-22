% Phan The Anh - 20204941
% 7/6/2022
% Bài 5.5
x = [ -2,3,5,8,9];
f = [6.3, 1.2 , 7.1, -2.8, -0.05];
N = length(x);
sumx1 = sum(cos(x));
sumx2 = sum(sin(x).*cos(x));
sumx3 = sum(sin(x));
sumfx = sum(f.*cos(x));
sumf = sum(f);
A = [sumx1 sumx2; N sumx3];
B = [sumfx; sumf];
result = inv(A)*B