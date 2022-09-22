y1 = @(y1,y2,x) -16*y1 + 12*y2 + 16*cos(x) - 13*sin(x);
y2 = @(y1,y2,x) 12*y1 - 9*y2 - 11*cos(x) + 9*sin(x);
h = pi/16;
x0=0;
x1=1;
fy1 =  0;
fy2 = 1;
for i = x0:h:x1
    yn1 = fy1 + h*feval(y1,fy1,fy2,i);
    yn2 = fy2 + h*feval(y2,fy1,fy2,i);
    fy1 = yn1;
    fy2 = yn2;
end
fprintf('\ny1 = %f\ny2 = %f\n',fy1,fy2);
