function SaiPhanTrung (fx,A)
    fprintf('h \t\t\t\t DHGD \n');
    for i=1:4
        h = 1/(10^i);
        GanDung = (feval(fx,A+h)-feval(fx,A-h))/(2*h);
        fprintf('%f \t\t %f\n',h,GanDung);
    end
end