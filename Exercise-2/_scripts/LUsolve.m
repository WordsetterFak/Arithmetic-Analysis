function x = LUsolve(A,b)
  [L, U] = LUdec(A);
  y = Lsol(L,b);
  x = Usol(U,y);
end


