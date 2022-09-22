% Nh?p vào m?t s? nguyên và in ra các ??c c?a nó
% Ch??ng trình k?t thúc khi nh?p vào là 0
function Uoc()
    so = input('Nhap so N: ');
    while so ~= 0 
        for i = 1:1:so/2
            if mod(so,i) == 0 
                fprintf('%d ',i);
            end
        end
        fprintf('\n');
        so = input('Nhap so N: ');
    end
end

