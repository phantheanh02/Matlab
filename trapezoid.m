function trapezoid(fun,a,b,n)
    fa = feval(fun,a);
    fb = feval(fun,b);
    h = (b-a)/n;
    I = (fa+fb)*h/2;
    for i= 1:n-1
        fh = feval(fun,a+i*h);
        I= I + h*fh;
    end
    fprintf('\n%f\n',I);
end