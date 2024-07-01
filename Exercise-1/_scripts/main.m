format long

% Exercise 1

% f = @(y) (1 - cos(y)) / (y^2);

##for x = [0, 10^-5, 10^-6, 10^-7, 10^-8]
##
##  exact = 1/2;
##
##  functionValue = f(x);
##
##  taylorValue = taylorSeriesA(x);
##
##  functionAbsoluteError = abs(functionValue - exact);
##  functionRelativeError = functionAbsoluteError / exact;
##
##  taylorAbsoluteError = abs(taylorValue - exact);
##  taylorRelativeError = taylorAbsoluteError / exact;
##
##  fprintf("For x = ")
##  disp(x)
##
##  fprintf("\n")
##
##  fprintf("Function Value = ")
##  disp(functionValue)
##  fprintf("Function Absolute Error = ")
##  disp(functionAbsoluteError)
##  fprintf("Function Relative Error = ")
##  disp(functionRelativeError)
##
##  fprintf("\n")
##
##  fprintf("Taylor Value = ")
##  disp(taylorValue)
##  fprintf("Taylor Absolute Error = ")
##  disp(taylorAbsoluteError)
##  fprintf("Taylor Relative Error = ")
##  disp(taylorRelativeError)
##  fprintf("---------------------------\n")
##
##endfor

% Exercise 3

% f = @(y) y^3 - 2 * y^2 + 1;
% fp = @(y) 3*y^2 - 4 * y;

% Part 2

##[newtonRoot, newtonCounter] = newtonRaphson(-2, f, fp, 10^(-8), 50);
##[secantRoot, secantCounter] = secant(-2, -7/4, f, 10^(-8), 50);
##
##fprintf("Newton Raphson Root Finding Method: \n")
##fprintf("Root Approximation: ")
##disp(newtonRoot)
##fprintf("NewtonRaphson Iteration Count: %i \n", newtonCounter)
##
##fprintf("---------------\n")
##
##fprintf("Secant Root Finding Method: \n")
##fprintf("Secant Approximation: ")
##disp(secantRoot)
##fprintf("Secant Iteration Count: %i \n", secantCounter)

% Part 3

##[newtonRoot, newtonCounter] = newtonRaphson(4/3, f, fp, 10^(-8), 50);
##[secantRoot, secantCounter] = secant(4/3, 5/4, f, 10^(-8), 50);
##
##fprintf("Newton Raphson Root Finding Method: \n")
##fprintf("Root Approximation: ")
##disp(newtonRoot)
##fprintf("NewtonRaphson Iteration Count: %i \n", newtonCounter)
##
##fprintf("---------------\n")
##
##fprintf("Secant Root Finding Method: \n")
##fprintf("Secant Approximation: ")
##disp(secantRoot)
##fprintf("Secant Iteration Count: %i \n", secantCounter)

% Part 4

## [root, counter] = bisection(3/2, 2, f, 10^(-8), 50);
## disp(root)
## disp(counter)

% Part 5

##r3 = 1/2 + sqrt(5)/2;
##[root, counter] = newtonRaphson(2, f, fp, 10^(-8), 50);
##
##absError = abs(r3 - root);
##relError = absError / r3;
##
##fprintf("Repetitions: %i \n", counter)
##fprintf("Absolute Error: ")
##disp(absError)
##fprintf("Relative Error: ")
##disp(relError)

% Exercise 4

## f = @(x) x^3 - 5*x;
## fp = @(x) 3*x^2 - 5;
##
##[root1, counter1] = newtonRaphson(-1, f, fp, 10^(-5), 50);
##[root2, counter2] = newtonRaphson(-1, f, fp, 10^(-5), 100);
##[root3, counter3] = newtonRaphson(-0.999, f, fp, 10^(-5), 100);
##[root4, counter4] = newtonRaphson(-1.001, f, fp, 10^(-5), 100);
##disp(root1)
##disp(root2)
##disp(root3)
##disp(root4)

