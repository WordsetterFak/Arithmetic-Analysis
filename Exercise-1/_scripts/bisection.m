function [approximation, iterationCount] = bisection(left, right, f, tolerance, maxIterations)

  mid = (left + right) / 2;
  iterationCount = 0;

  while (right - left)  > tolerance && f(mid) != 0 && iterationCount < maxIterations
      mid = (left + right) / 2;  % Divide our original interval into two
      % Determine which of the split intervals is guaranteed to contain a root
      % using Bolzano's Theorem and discard the other interval
      if f(mid) * f(left) < 0
        right = mid;
      else
        left = mid;
      endif

      iterationCount = iterationCount + 1;
  endwhile

  approximation = mid;

end
