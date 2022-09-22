% Bài tap nhóm giua ky
% Bài tap 2: Cài dat phuong pháp Jacobi giai bài toán Heat Equation.
% Thành viên
% Lê The Anh        20200018
% Phan The Anh      20204941
% Nguyen Ven Chung  20204945
% Nguyen Duy Doanh  20204948

% Tham sp dauu vào
% Bieu dien nong do C trên mot diem luoi C(L,m);
L = 20;             % Mien giá tri                                     
n = 20;             % So diem luoi doc theo x và y
tolerance = 0.001;  % Tiêu chí hoi tu

% Phuong pháp de quy Jacobi
% Hang so
x = linspace(0,L,n);            
y = linspace(0,L,n);                           

% Khoi tao giá tri ban dau
C = ones(n, n);                 % Khoi tao ma tran C
for i = 1:L
    for j = 1:n;
        if (i>=(L/2-5)&&i<(L/2+5)&&j>=(n/2-5)&&j<(n/2+5)) 
            C(i,j) = 80;
        else C(i,j) = 25;
        end
    end
end
C_old = C;                      % Cap nhat các giá tri cu trong vòng lap
error = 1;                      % Bat dau vòng lap dau tiên
n_iteration = 1;                % So lan lap
k = 4;                          % Dieu kien cho phep CFL buoc thoi gian tôi da
    % Thuc hien vòng lap
% for 2D representation
[X,Y] = meshgrid(x,y);
iterative_solver=1;
% Jacobi method

if iterative_solver==1
% to find computation time
tic; 
if iterative_solver==1
    jacobi_iter=1;
    while(error > tolerance)
        for i=2:n-1
            for j=2:n-1
                C(i,j) = 0.25*((C_old(i-1,j)+C_old(i+1,j)+C_old(i,j-1)+C_old(i,j+1)));
            end
        end
        error = max(max(abs(C_old-C)));
        C_old = C;
        jacobi_iter=jacobi_iter+1;  
    end
end
% to end computing time 
F=toc;

%plot
figure(1)
[M,N]=contourf(X,Y,C);
clabel(M,N)
colormap(jet)
colorbar
title_text=sprintf('Number of iterations using Jacobi method=%d, Computation time=%fs',jacobi_iter,F);
title(title_text)
xlabel('X-axis')
ylabel('Y-axis')
fprintf('Number of Iterations using Jacobi method=%dn',jacobi_iter);
end
