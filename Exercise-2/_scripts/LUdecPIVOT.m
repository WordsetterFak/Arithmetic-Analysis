function [P, L, U] = LUdecPIVOT(A)
  n = size(A,1);
  L = eye(n,n);
  P = eye(n, n);
  U = A;
  for i=1:n-1

    pos = maxVecPos(U(i:n, i)) + i - 1;  % find next biggest (abs) pivot
    U([i, pos], :) = U([pos, i], :);  % swap rows
    P([i, pos], :) = P([pos, i], :);
    L([i, pos], 1:i-1) = L([pos, i], 1:i-1);

    for j=i+1:n
        L(j,i) = U(j, i)/U(i,i);
        for k=i:n
            U(j,k) = U(j,k) - L(j,i)*U(i,k);
        end
    end
   end
end
