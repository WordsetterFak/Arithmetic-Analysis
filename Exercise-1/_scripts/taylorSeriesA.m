function approximation = taylorSeriesA(x)
  % For exercise 1
  % Taylor series of (1 - cosx) / x^2, centered at 0

  term = 1/2;
  approximation = term;
  k = 1;

  while abs(term) >= eps

    term = - x^2 / ((2*k + 1) * (2*k + 2));
    approximation = approximation + term;
    k = k + 1;

  endwhile

end
