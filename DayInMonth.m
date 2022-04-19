function [ day ] = DayInMonth(M)
    switch M
        case {1, 3, 5, 7, 8, 10, 12}  
            day = 31;
        case 2 
            day = 28;
        otherwise
            day = 30;
    end
    fprintf('Thang %d co %d ngay',M,day);
end

