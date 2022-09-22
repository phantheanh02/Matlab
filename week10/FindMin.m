fx = @(x) exp(x) + exp(-x)  - 3*x^2 + x;
a = 2;
b = 4;
e = 0.1;
x1 = a + (b - a)/2 - e/2;
x2 = a + (b - a)/2 + e/2;
while abs(b-a) >= 2*e
    f1 = feval(fx,x1);
    f2 = feval(fx,x2);
    if f1 < f2 
       b = x2;
    elseif f1 > f2
            a = x1;
    else a = x1, b= x2;
    end
    x1 = a + (b - a)/2 - e/2;
    x2 = a + (b - a)/2 + e/2;
end
fprintf('\nx = %f',x1);
fprintf('\nfx = %f',feval(fx,x1));