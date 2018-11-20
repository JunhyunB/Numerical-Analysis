function x0 = newton(func, df, x0, es, maxit)

iter = 0;
u = func(x0);
v = df(x0);

error = abs(u / v);

while(error > es) & (iter <= maxit) & (v~=0)
    x1 = x0 - u / v;
    error = abs(x1 - x0);
    x0 = x1;
    u = func(x0);
    v = df(x0);
    iter = iter + 1;
end