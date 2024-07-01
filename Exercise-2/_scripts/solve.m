function x = solve(A, b)

  [P, L, U] = LUdecPIVOT(A);  % with partial pivoting

  y = Lsol(L, P * b);
  x = Usol(U, y);

end
