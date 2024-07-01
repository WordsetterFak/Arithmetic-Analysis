function y = diagLsol(L,b)
  n = size(L,1);
  y=zeros(n,1);
  y(1) = b(1);
  for i=2:n
    y(i) = b(i) - L(i, i-1) * y(i - 1);
  end
end
