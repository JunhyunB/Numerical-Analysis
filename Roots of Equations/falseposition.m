function [root, ea] = falseposition(func, xl, xu, es, maxit)

iter = 0; xr = xl; ea = 100;

while(1)
    xrold = xr;
    fl = func(xl);
    fu = func(xu);
    xr = xu - fu * (xl - xu) / (fl - fu);
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xold) / xr) * 100
    end
    test = fl * func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es | iter >= maxit
        break
    end
end
root = xr;