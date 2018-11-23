# Numerical Analysis

## This is the repository for scratch of Numerical Analysis with MATLAB.

# Table of Contents
[1. Roots of Equations](#1-roots-of-equationshttpsgithubcomjunhyunbnumerical-analysisblobmaster1rootsofequationsreadmemd)
- [Bisection Method](https://en.wikipedia.org/wiki/Bisection_method)
- [Method of False Position](https://en.wikipedia.org/wiki/False_position_method)
- [Fixed Position Iteration](https://en.wikipedia.org/wiki/Fixed-point_iteration)
- [Newton's Method](https://en.wikipedia.org/wiki/Newton's_method)
- [Secant Method](https://en.wikipedia.org/wiki/Secant_method)

[2. Linear Equation](#2-linear-equation)
- [Naive Gaussian Elimination](https://en.wikipedia.org/wiki/Gaussian_elimination)

[3. Optimizaiton](#3-optimizaiton)
- [Golden Section Search](https://en.wikipedia.org/wiki/Golden-section_search)

## [1. Roots of Equations](https://github.com/JunhyunB/Numerical-Analysis/blob/master/1.%20Roots%20of%20Equations/README.md)
#### - [Bisection Method](https://en.wikipedia.org/wiki/Bisection_method)
main algorithm
```
while(1)
    xrold = xr;
    xr = (xl + xu) / 2;
    test = func(xl) * func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
```
#### - [Method of False Position](https://en.wikipedia.org/wiki/False_position_method)
main algorithm
```
while(1)
    xrold = xr;
    fl = func(xl);
    fu = func(xu);
    xr = xu - fu * (xl - xu) / (fl - fu);
    test = fl * func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
```

#### - [Fixed Position Iteration](https://en.wikipedia.org/wiki/Fixed-point_iteration)
main algorithm
```
while(1)
    x1 = u;
    error = abs(x1 - x0);
    x0 = x1;
    u = func(x0);
```

#### - [Newton's Method](https://en.wikipedia.org/wiki/Newton%27s_method)
main algorithm
```
while(1)
    x1 = x0 - u / v;
    error = abs(x1 - x0);
    x0 = x1;
    u = func(x0);
    v = df(x0);
```

#### - [Secant Method](https://en.wikipedia.org/wiki/Secant_method)
main algorithm
```
while(1)
    x = x1 - v * (x1 - x0) / (v - u);
    x0 = x1;
    u = v;
    x1 = x;
    v = func(x1);
    error  = abs(x1 - x0);
```


## 2. Linear Equation  
#### - [Naive Gaussian Elimination](https://en.wikipedia.org/wiki/Gaussian_elimination)

## 3. Optimizaiton  
#### - [Golden Section Search](https://en.wikipedia.org/wiki/Golden-section_search)