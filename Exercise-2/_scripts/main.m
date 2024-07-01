
% Ex 1

##n = 11;
##
##A = diag(5*ones(1,n)) + diag(2*ones(1,n-1), 1) + diag(2*ones(1,n-1), -1);
##
##[L, U] = diagLUdec(A);
##
##determinant = prod(diag(U))
##
##invA = zeros(n,n);
##
##for i = 1:n
##
##  e = zeros(n);
##  e(i) = 1;
##
##  y = diagLsol(L, e);
##  x = diagUsol(U, y);
##
##  invA(:, i) = x;
##
##end
##
##invA
##
##inv(A)  % Same, but with different numerical errors
##det(A)

% Ex 2

##A = [2 1 3; 4 2 1; 1 1 1];
##b = [13 11 6]';
##
##[L, U] = LUdec(A);  % without partial pivoting
##[P, Ld, Ud] = LUdecPIVOT(A);  % with partial pivoting
##
##y = Lsol(L, b);
##x = Usol(U, y);
##
##yd = Lsol(Ld, P * b);
##xd = Usol(Ud, yd);
##
##x
##xd

% Ex 3

##hil = hilb(4);
##had = hadamard(4);
##
##b1 = [25/12 77/60 19/20 319/420]';
##b2 = [4 0 0 0]';
##
##sol = [1 1 1 1]';
##
##b1n = [25/12 77/60 19/20 320/420]';
##b2n = [4 0 0 1/420]';
##
##hilsol = solve(hil, b1n);
##hadsol = solve(had, b2n);
##
##% hilbert
##norm(sol - hilsol, inf) / norm(sol, inf)
##norm(b1 - b1n, inf) / norm(b1, inf)
##cond(hil, inf)
##
##% had
##norm(sol - hadsol, inf) / norm(sol, inf)
##norm(b2 - b2n, inf) / norm(b2, inf)
##cond(had, inf)

% Ex 4

##f = @(x) 1./(1+ x .^2);
##
##x = linspace (-5, 5, 15);
##y = f(x);
##
##graphX = linspace(-5, 5, 100);
##graphY = f(graphX);
##
##g = @(z) interpolate(z, x, y);
##
##graphZ = arrayfun(g, graphX);
##
##splineGraph = spline(x, y, graphX);
##
##hold on
##
##figure(1)
##plot(graphX, graphY)
##plot(graphX, graphZ)
##plot(graphX, splineGraph,"--r")
##legend("function", "interpolation", "spline")
##title("Exercise4Plot")
##
##hold off
