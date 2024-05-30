function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    bA = randi([-4, 8], 2, 1);
    
    A1 = randi([-4, 8], 2, 3);
    Ab1 = [A1 bA];
    [~, n] = size(A1);
    sol1 = LS_solution(n, A1, Ab1);

    A2 = randi([-4, 8], 2, 3);
    Ab2 = [A2 bA];
    [~, n] = size(A2);
    sol2 = LS_solution(n, A2, Ab2);

    A3 = randi([-4, 8], 2, 3);
    Ab3 = [A3 bA];
    [~, n] = size(A3);
    sol3 = LS_solution(n, A3, Ab3);
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    % An underdetermined linear system cannot have a unique solution
    % becuase every column cannot be a pivot column because of the lack of
    % rows, so there will always be at least one free variable.

    % (LEAVE THE FOLLOWING AS NaN OR PROVIDE AN EXAMPLE IF POSSIBLE)
    % (WHEN PROVIDING AN EXAMPLE, IT MUST BE A NON-TRIVIAL EXAMPLE.)
    % (i.e., A MATRIX DOES NOT CONTAIN A ZERO ROW AND DOES NOT HAVE TWO OR MORE IDENTICAL ROWS.)
    example_A1 = [1 2 3;
                  2 4 6];
    example_b1 = [7;
                  15];
    [~, n] = size(example_A1);
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]);
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-4, 8], 3, 1);

    A4 = randi([-4, 8], 3, 2);
    Ab4 = [A4 bC];
    [~, n] = size(A4);
    sol4 = LS_solution(n, A4, Ab4);

    A5 = randi([-4, 8], 3, 2);
    Ab5 = [A5 bC];
    [~, n] = size(A5);
    sol5 = LS_solution(n, A5, Ab5);

    A6 = randi([-4, 8], 3, 2);
    Ab6 = [A6 bC];
    [~, n] = size(A6);
    sol6 = LS_solution(n, A6, Ab6);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
    
    % Since overdetermined matrices have more equations than variables,
    % there are less chances for pivot columns, which has a greater chance 
    % to result in overdefined variables and an inconsistent system.

    % (PROVIDE AN EXAMPLE WITH ONE SOLUTION BELOW WITH A NONTRIVIAL MATRIX)
    example_A2 = [1 1;
                  2 -1;
                  1 -2];
    example_b2 = [3;
                  1;
                  -1];
    [~, n] = size(example_A2);
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]);

    % (PROVIDE AN EXAMPLE WITH INFINITELY MANY SOLUTIONS BELOW WITH A NONTRIVIAL MATRIX)
    example_A3 = [1 2;
                  2 4;
                  3 6];
    example_b3 = [5;
                  10;
                  15];
    [~, n] = size(example_A3);
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]);
end
