% Phan The Anh      - 20204941
% Le The Anh        - 20200018
% Nguyen Van Chung  - 20204945
% Nguyen Duy Doanh  - 20204948
%tham so 
C = 1 ; N = 21 ; dt = 0.01; dx = 0.05; T =5; 
% khoi tao dieu kien ban dau 
for i = 1:N 
    x = (i-1)*dx; 
    phi0(i)= sin(2*pi*x); 
    phi1(i)= sin(2*pi*x); 
end
NTime  = T/dt; 
r = C*dt/dx;
for time = 1 : NTime 
    for i = 1:N
        if  i == 1
            phi2(i) = 0;
        elseif  i  == N 
            phi2(i) = 0; 
        else 
            phi2(i) = phi1(i)*2 - phi0(i) + r*r* (phi1(i-1)-2*phi1(i)+phi1(i+1));
        end
    end 
    phi0 = phi1; 
    phi1 = phi2;
    X =  1 : N; plot(X,phi1) ; ylim ([-1 1]); pause(0.05);      
end