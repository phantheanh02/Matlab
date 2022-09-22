f= @(y,x) -y + x + 1;
y0 = 1;
x0 = 0; 
x1 = 1;
ChinhXac = @(x) x + exp(-x);
for j = 1:1:3
    h = 10^(-j);
    X = x0:h:x1;
    Y = feval(ChinhXac,X);
    plot(X,Y); hold on;
    for i= x0:h:x1
        r = y0 + h*feval(f,y0,i);
        plot(i,r,'r*--');
        y0 = r;
    end
    fprintf('\nKQ = %f\n',y0);
end