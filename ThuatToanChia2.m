function [] = ThuatToanChia2 ( fx,a,c,exp )
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
end

