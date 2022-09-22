% Sai phân thu?n
function SaiPhanThuan(fx,A)
    ChinhXac= cos(A);
    fprintf('h \t\t\t\t DHGD \n');
    for i=1:6
        h = 1/(10^i);
        GanDung = (feval(fx,A+h)-feval(fx,A))/h;
        fprintf('%f \t\t %f\n',h,GanDung);
    end
end

