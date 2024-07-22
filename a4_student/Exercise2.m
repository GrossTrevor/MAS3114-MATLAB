function [name, ufid, ...
    A, x0, x1, x2, ...
    sol1, P, D, C1, sol2, ...
    x0_another, sol3, C2, sol4] = Exercise2()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    A = [.7 .3 .1;
         .1 .5 .1;
         .2 .2 .8];
    x0 = [.7;
          .1;
          .2];

    x1 = A * x0;
    x2 = A * x1;

    % --- Part B (see SolveDiffEq.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % Method 1: Call SolveDiffEq(...)
    sol1 = SolveDiffEq(A, x0);

    % Method 2: Diagonalization (of the Transformation Matrix)
    [P, D] = eigvec(A); % (UNCOMMENT THIS LINE)

    C1 = rref([P x0]);

    sol2 = C1(1, end) * 1 * P(:, 1);

    % Observe: Yes, both methods produce the same result.
    % Conclude: In the long run we expect... 33.33% of those surveyed will 
    % drive cars, 16.67% minivans, and 50% suv. 

    % --- Part D [10 Points] --- %
    x0_another = [0;
                  1;
                  0];

    % Method 1: Call SolveDiffEq(...)
    sol3 = SolveDiffEq(A, x0_another);

    % Method 2: Diagonalization (of the Transformation Matrix)
    C2 = rref([P x0]);

    sol4 = C2(1, end) * 1 * P(:, 1);

    % Comparision: The results are the same as before.
    % Theorem: Since this is a steady-state vector (the limit as k goes to
    % infinity), the result will always be the same, no matter the starting
    % proportions.
    % Conclusion: In the long run we expect... 33.33% of those surveyed 
    % will drive cars, 16.67% minivans, and 50% suv. 
end
