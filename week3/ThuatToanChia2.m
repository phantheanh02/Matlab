
a = 0.5;
c = 1;
exp = 0.15;
fx =   @(x)2*x^3+x-2;
   step =0;
   SaiSoThucTe=10000;
  while SaiSoThucTe > exp
    b=(a+c)/2;
    step=step+1;
    fa=feval(fx,a);
    fb=feval(fx,b);
    fc=feval(fx,c);
    fprintf('%d \t %f \t %f \t %f \t %f \t %f \t %f \n',step,a,b,c,fa,fb,fc);
    if (fa*fb) <= 0
        c=b;
    else 
        a=b;
    end
    SaiSoThucTe = abs(fb);
  end

