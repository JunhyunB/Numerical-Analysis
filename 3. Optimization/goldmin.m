function [x, fx, ea, iter] = goldmin(f, xl, xu, es, maxit)

phi = (1+sqrt(5)) / 2;
iter = 0;

while(1)
    d = (phi-1)*(xu - xl);
    x1 = xl + d;
    x2 = xu - d;
    if f(x1) < f(x2)
        xopt = x1;
        xl = x2;
    else
        xopt = x2;
        xu = x1;
    end
    iter = iter + 1;
    
    if xopt ~= 0
        ea = (2 - phi) * abs((xu - xl) / xopt)*100;
    end
    if ea <= es || iter >= maxit
        break
    end
end
x = xopt;
fx = f(xopt);