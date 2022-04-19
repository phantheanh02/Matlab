name = input('Nhap ten cua ban: ');
diem = input('Nhap diem: ');
if diem >= 8.5
    so = 'A';
elseif diem >=7.5
    so = 'B';
elseif diem >=5.5
    so = 'C';
else
    so = 'D';
end
fprintf(so);