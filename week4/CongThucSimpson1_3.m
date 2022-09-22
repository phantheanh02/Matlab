function CongThucSimpson1_3(f,a,b,n)
    Fx= @(x) x^3/3 + x^2/2 + x;
    fa = feval(f,a);
    fb = feval(f,b);
    Ictht = (fa + fb)*(a-b)/2;
    Icx = feval(Fx,b)-feval(Fx,a);
    
    
end