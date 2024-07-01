function s = interpolate(z, x, y)
  n = length(x);

  s = 0;

  for i = 1:n

    p = 1;

    for j = 1:n

      if i == j
        continue;
      endif

      p *= (z - x(j))/(x(i) - x(j));

    endfor

    s += y(i) * p;

  endfor

end
