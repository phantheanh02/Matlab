% Bài toán PTN ID
% T: nhi?t ??, t: th?i gian, D: h/s? truy?n nhi?t, x: không gian m?t chi?u
% Tham s?
M = 20;
D = 0.01;
dx = 0.05;
dt = 0.01;
Time = 1;
% ?i?u ki?n ban ??u
for i = 1:M
    T(i) = 25;
end
% Thu?t toán
ntime = Time/dt;
for time = 1:ntime
    % Tính ??o hàm b?c 2
    for i = 1:M
        if i == 1
            dhb2(i) = D*(100 - 2*T(i) + T(i+1))/(dx*dx);
        elseif i == M
            dhb2(i) = D*(T(i-1) - 2*T(i) + 25)/(dx*dx);
        else 
            dhb2(i) = D*(T(i-1) - 2*T(i) + T(i+1))/(dx*dx);
        end
    end
    % Tính nhi?t ?? theo th?i gian
    for i= 1:M
        T(i) = T(i) + dt*dhb2(i);
    end
    % V? ?? th?
    x = 1:M;
    ylim manual;
    ylim ([0 100]);
    plot(x,T);
    pause(0.01);
end

