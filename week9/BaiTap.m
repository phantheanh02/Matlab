
x = [ -3,2,0,-2,6];
y = [-2, -2, 1, 2, 5]
f = [45, 30 , 6, 55, 230];
N = length(x);
sumx1 = sum(x);
sumx2 = sum(x.^2);
sumx3 = sum(x.^3);
sumx4 = sum(x.^4);
sumx = sum(f.*(x*x));
A = [sumx4 sumx3 sumx2; sumx3 sumx2 sumx1; sumx2 sumx1 N];
sumy = sum(f.*(y*y));
sumf = sum(f);
B = [sumx sumy; sumf];
result = inv(A)*B