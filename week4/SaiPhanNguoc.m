function SaiPhanNguoc(fx,A)

    fprintf('h \t\t\t\t DHGD \n');
    for i=1:6
        h = 1/(10^i);
        GanDung = (feval(fx,A)-feval(fx,A-h))/h;
        fprintf('%f \t\t %f\n',h,GanDung);
    end
end

