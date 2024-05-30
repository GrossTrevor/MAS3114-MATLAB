function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    [B, pivcols] = rref([A b]); % (WRITE COMMAND BEFORE SEMI-COLON)
    % B has pivcols in 1, 2, and 4

    % There is no solution because there is not a pivcol in 3, so
    % the matrix reads 0 != 1

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, [A b]);
    % Rouché-Capelli Theorem - determines the number of solutions for a 
    % system of linear equations, given the rank of its augmented matrix 
    % and coefficient matrix
    
    % Since rank([A]) does not equal to rank([A b]), there are no solutions
   
    % --- Part C [10 Points] --- %
    [m, n] = size(A);
    solution_type = LS_solution(n, A, [A b]);
end
