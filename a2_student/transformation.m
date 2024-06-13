function [transform_type, name, ufid] = transformation(A)
    % Purpose: Determine if a matrix is onto and/or one-to-one
    % Input Argument [A]: The matrix A
    % Output Argument [transform_type]: Onto and/or one-to-one or neither

    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    
    % Use dependence.m as a guide to write this new function. Enter code below.
    if rank_A == min(m, n)
        if m <= n
            transform_type = one_to_one;
        else
            transform_type = onto;
        end
    else
        transform_type = neither;
    end

    if rank_A == m && rank_A == n
        transform_type = both;
    end
end
