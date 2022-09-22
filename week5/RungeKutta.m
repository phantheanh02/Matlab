% Phan Th? Anh - 20204941
% MSSV : 20204941
% Khai báo y',y,x0,x1,h,hàm chính xác
f= @(y,t) - y + t + 1;
y0 = 1;
t0 = 0; 
t1 = 1;
h = 0.001;
ChinhXac = @(t) t + exp(-t);
X = t0:h:t1;
Y = feval(ChinhXac,X);
plot(X,Y); hold on;
% Ph??ng pháp Euler thu?n
  for i= t0:h:t1
       plot(i,y0,'y*--');
       y0 = y0 + h*feval(f,y0,i);
       
    end
% Runge-Kutta b?c 2
y0=1;
for i= t0:h:t1
    k1 = h*feval(f,y0,i);
    k2 = h * feval(f, y0 + k1, i + h);
    plot(i,y0,'red*--');
    y0 = y0 + 0.5*(k1+k2);
end
% Runge-Kutta b?c 3
y0=1;
for i= t0:h:t1
    k1 = h * feval(f,y0,i);
    k2 = h * feval(f,y0+0.5*k1,i+0.5*h);
    k3 = h * feval(f,y0 - k1 + 2*k2, i + h);
    plot(i,y0,'green*--');
    y0 = y0 + 1/6*(k1 + 4*k2 + k3);
end
% Runge-Kuttan b?c 4
y0 = 1;
for i = t0:h:t1
   k1 = h * feval(f,y0,i);
   k2 = h * feval(f,y0 + 1/3*k1, i + 1/3*h);
   k3 = h * feval(f,y0 + 1/3*k1 + 1/3*k2, i + 2/3*h);
   k4 = h * feval(f,y0 + k1 - k2 + k3, i + h);
   plot(i,y0,'blue*--');
   y0 = y0 + 1/8*(k1 + 3*k2 + 3*k3 + k4)
end