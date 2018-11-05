function [root, ea, iter] = bisection(func, xl, xu, es, maxit)
% bisection method
% input:
%  func = name of function
%  xl, xu = lower & upper guesses (bracket range)
%  es = desired relative error
%  maxit = maximum allowable iterations
% output:
%  root = real root
%  ea = approximate relative error (%)
%  iter = number of iterations
while(1)
    xrold = xr;
    xr = (xl + xu) / 2;
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xrold) / xr) * 100
    end
    test = func(xl) * func(xr);
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