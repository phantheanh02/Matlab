function PPCatTuyen(fx,x0,x1,e)
fxk = feval(fx,x1);
step=0;
while abs(fxk) > e
    step=step+1;
    fx0=feval(fx,x0);
    fx1=feval(fx,x1);
    sk = (fx1-fx0)/(x1-x0);
    x0=x1;
    x1=x1-fx1/sk;
    fxk=feval(fx,x1);
end
Nghiem = x0
SaiSo = abs(fxk)
BuocLap = step
end
