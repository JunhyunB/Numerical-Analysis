function x0 = fixedpoint(func, x0, es, maxit)

iter = 0;
u = func(x0);
error = abs(u - x0);

while (error > es) & (iter <= maxit)
    x1 = u;
    error = abs(x1 - x0);
    x0 = x1;
    u = func(x0);
    iter = iter + 1;
end