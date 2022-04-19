% Tinh tong cac so chia het cho M
function Tong()
    s=0;
    M = input('Nhap so M: ');
    for i= 1:1:100
        if mod(i,M) == 0
            s = s + i;
        end
    end
    fprintf('Tong cac so chia het cho %d la %d\n',M,s);
end

