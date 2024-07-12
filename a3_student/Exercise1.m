function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    % vvvvv COMMENT OUT BEFORE SUBMITTING vvvvv %
    % n = randi([2500, 5000]);
    % A = randi([-7,7], n, n);
    % b = randi([-7,7], n, n);
    % 
    % tic
    %     A\b;
    % toc;
    % 
    % tic
    %     inv(A) * b;
    % toc;
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %

    % A\b is faster than inv(A) * b when A is invertable. A\b solves the
    % equation A * x = b for x, which will not always be the same as inv(A)
    % * b.

    % (ii) Some more practical things...
    A = [1 2 3;
         4 5 6;
         -7 -8 -9];
    rref_A = rref(A);

    % Since A does not have a pivot in each column, A is not invertible.
    % Therefore, the determinant of A is 0.

    det_A = det(A);
    % disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = det(A.');

    % det(A) and det(A.') are equal.
    % If A is not invertible, then A.' is also not invertible.

    % --- Part B [10 Points] --- %
    A1 = [0 1 4;
          1 3 3;
          3 7 5];
    b1 = [-4;
          -2;
          6];

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule3x3(A1, b1);

    % Yes, the system is consistent.
    % The solution is [-19; 8; 1].

    % --- Part C [10 Points] --- %
    A2 = [0 2 4;
          1 3 3;
          3 7 5];
    b2 = [-4;
          -2;
          6];

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule3x3(A2, b2);

    % No, the system is not consistent.
    % There are no solutions.

    % --- Part D [10 Points] --- %
    A3 = [0 2 4;
          1 3 3;
          3 7 5];
    b3 = [-4;
          -2;
          -2];

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule3x3(A3, b3);

    % Yes, the system is consistent.
    % x = {[4; -2; 0] + t[3; -2; 1], t in R}
end

