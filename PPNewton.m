% Input: fx,fx',x0,e
% Output: x^4
function PPNewton( fx,f,x0,e )
    step=0;
    fxk=1;
    while abs(fxk)> e
        step=step+1;
        a=feval(fx,x0);
        b=feval(f,x0);
        x0= x0 - a/b;
        fxk=feval(fx,x0);
    end
    fprintf('Nghiem: %f\nSai so: %f\nBuoc lap: %d\n',x0,fxk,step);
end

