function [L, U] = diagLUdec(A)
  n = size(A,1);
  L = eye(n,n);
  U = A;
  for i=1:n-1
    j = i+1;
    L(j,i)= U(j,i)/U(i,i);  % Calculation of m-(i+1)i
    for k=i:i+1
      U(j,k) = U(j,k) - L(j,i)*U(i,k);
      % for k = i, eliminates the element at the subdiagonal
      % for k = i+1, updates the next diagonal element
    end
end
