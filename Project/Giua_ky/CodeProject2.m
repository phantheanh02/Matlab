% Bài tap nhóm giua ky
% Bài tap 2: Cài dat phuong pháp Jacobi giai bài toán Heat Equation.
% Thành viên
% Lê The Anh        20200018
% Phan The Anh      20204941
% Nguyen Ven Chung  20204945
% Nguyen Duy Doanh  20204948
% Dang Quang Dat    20205064

% Tham so dau vào
% Bieu dien nong do C trên mot diem luoi C(L,m);
L = 20;             % Mien giá tri                                     
n = 20;             % So diem luoi doc theo x và y
tolerance = 0.001;  % Tiêu chí hoi tu

% Phuong pháp de quy Jacobi
% Hang so
x = linspace(0,L,n);    % Tao vector tuyen tinh       
y = linspace(0,L,n);           
                
% Khoi tao giá tri ban dau
C = ones(n, n);                 % Khoi tao ma tran C
for i = 1:L
    for j = 1:n
        if (i>=(L/2-5)&&i<(L/2+5)&&j>=(n/2-5)&&j<(n/2+5)) 
            C(i,j) = 80;
        else C(i,j) = 25;
        end
    end
end
C_old = C;                      % Cap nhat các giá tri cu trong vòng lap
error = 1;                      % Bat dau vòng lap dau tiên
n_iteration = 1;                % So lan lap
k = 4;  % Dieu kien cho phep CFL buoc thoi gian tôi da
    % Thuc hien vòng lap
    while error > tolerance
        for j = 2: (n-1)
            for i = 2: (n-1)
               % Phuong pháp Jacobi
                C(i,j) = (1/k)*((C_old(i-1,j)+C_old(i+1,j))+(C_old(i,j-1)+C_old(i,j+1)));
            end
        end
        % Kiem tra su hoi tu
        error = max(max(abs(C - C_old)));
        % Cap nhat giá tri cu
        C_old = C;
        n_iteration = n_iteration + 1;
    % Ve hinh
        [A,h] = contourf(x,y,C);    % Filled 2-D contour plot
        colormap(jet);              % Set and get current colorma          
        clabel(A,h);                % Contour plot elevation labels  
        xlabel('X');
        ylabel('Y');
        title_text = sprintf(['Solving 2D steady state heat equation using Jacobi iterative solver\nNo. of grid points = %d\n Total iterations = %d\'], n, n_iteration);
        title(title_text);
        pause(0.01);
    end
