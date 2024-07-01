function [approximation, iterationCount] = newtonRaphson(x0, f, f_prime, tolerance, maxIterations)

  x1 = x0 - f(x0) / f_prime(x0);  % Initial Iteration
  iterationCount = 1;

  while abs(x1 - x0) > tolerance && f(x1) != 0 && iterationCount < maxIterations

    x0 = x1;
    x1 = x0 - f(x0) / f_prime(x0);  % Obtain the next term in our sequence
    iterationCount = iterationCount + 1;

  endwhile

  approximation = x1;

end
