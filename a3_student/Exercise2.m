function [name, ufid, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise2()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A (see CramersRule.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % (i) m > n
    A1 = randi([-4 8], 6, 4);
    b1 = randi([-4 8], 6, 1);

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule(A1, b1);

    % (ii) m < n
    A2 = randi([-4 8], 4, 6);
    b2 = randi([-4 8], 4, 1);

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule(A2, b2);

    % (iii) m = n
    A3 = randi([-4 8], 6, 6);
    b3 = randi([-4 8], 6, 1);

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule(A3, b3);

    % --- Part C [10 Points] --- %

    % When A is invertible, both A\b and the particular solution are
    % unique.

    % When Ax = b is consistent where A is an n x n singular matrix,
    % When A is square and singular, they all return the same matrix.

    % When Ax = b is consistent where A is an m x n (non-square) matrix,
    % Only A\b is correct when A is non square.
end
