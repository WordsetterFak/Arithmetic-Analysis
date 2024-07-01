function [approximation, iterationCount] = secant(x0, x1, f, tolerance, maxIterations)

  x2 = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));  % Initial Iteration
  iterationCount = 1;

  while abs(x1 - x0) > tolerance && iterationCount <= maxIterations && f(x2) != 0

    x0 = x1 ;
    x1 = x2 ;
    x2 = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));  % Obtain the next term in our sequence

    iterationCount = iterationCount + 1;

  endwhile

  approximation = x2;

endfunction

