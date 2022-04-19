function PPDayCung(fx,a,c,exp )
  step =0;
  SaiSoThucTe=10000;
  while SaiSoThucTe > exp
    step=step+1;
    fa=feval(fx,a);
    fc=feval(fx,c);
    b= a - (c-a)/(fc-fa)*fa;
    fb=feval(fx,b);
    fprintf('%d \t %f \t %f \t %f \t %f \t %f \t %f \n',step,a,b,c,fa,fb,fc);
    if (fa*fb) <= 0
        c=b;
    else 
        a=b;
    end
    SaiSoThucTe = abs(fb);
  end


end

