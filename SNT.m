% N nhap tai cua so lenh
% Kiem tra N co la SNT hay khong
function SNT(N)
    check = 0;
    for i=2:1:sqrt(N)
        if mod(N,i) == 0;
            fprintf('%d khong la SNT\n',N);
            check=1;
            break;
        end
    end
    if check == 0
        fprintf('%d la SNT\n',N);
    end
end



