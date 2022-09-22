f= @(y,t) -20*y + 7*exp(-0.5*t);
y0 = 5;
t0 = 0; 
t1 = 1;
h = 0.001;
ChinhXac = @(t) 5*exp(-20*t) + (7/19.5)*(exp(-0.5*t)-exp(-20*t));
X = t0:h:t1;
Y = feval(ChinhXac,X);
plot(X,Y); hold on;
for i= t0:h:t1
    r = y0 + h*feval(f,y0,i);
    plot(i,r,'red*--');
    y0 = r;
end
fprintf('\nKQ = %f\n',y0);