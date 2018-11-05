# Roots of Equations

## 1. Bisection Method
input:
    func = name of function
    xl, xu = lower & upper guesses
    es = desired relative error
    maxit = maximum allowable iterations

output:
    root = real root
    ea = approximate relative error (%)
    iter = number of iterations

## 2. Method of False Position
input:
    func = name of function
    xl, xu = lower & upper guesses
    es = desired relative error
    maxit = maximum allowable iterations

output:
    root = real root
    ea = approximate relative error (%)
    iter = number of iterations

## 3. Fixed Point Iteration
input:
    func = name of function
    x0 = initial value of x
    es = desired relative error
    maxit = maximum allowable iterations

output:
    x0 = real root

## 4. Newton's Method
input:
    func = name of function
    df = derivative of function
    x0 = initial value of x
    es = desired relative error
    maxit = maximum allowable iterations

output:
    x0 = real root
    
## 5. Secant Method
input:
    func = name of function
    x0 = first initial point
    x1 = second initial point
    es = desired relative error
    maxit = maximum allowable iterations

output:
    x0 = real root