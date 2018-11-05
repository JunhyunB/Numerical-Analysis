function x = secant(func, x0, x1, es, maxit)

iter = 0;
u = func(x0);
v = func(x1);

error = abs(x1 - x0);

while(error > es) & (iter <= maxit) & ((v-u)~=0)
    x = x1 - v * (x1 - x0) / (v - u);
    x0 = x1;
    u = v;
    x1 = x;
    v = func(x1);
    error  = abs(x1 - x0);
    iter = iter + 1;
end
