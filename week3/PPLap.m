function PPLap(gx,x0,e)
    step=0;
    SaiSoThucTe= 1;
    while SaiSoThucTe > e
        step=step+1; 
        x = feval(gx,x0);
        SaiSoThucTe = abs(x-x0);
        x0= x;
    end

end

