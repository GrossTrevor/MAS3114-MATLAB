function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;
    
    % The purpose of this function is to evaluate the Rouché–Capelli
    % theorem and determine the number of solutions
    % n = Number of variables in the system of equations
    % A = Coefficient matrix
    % Ab = Augmented matrix

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Add your code below
    if (n == rank(A)) && (rank(A) == rank(Ab))
        system_type = con_with_one_sol;
    elseif (rank(A) == rank(Ab)) && (rank(Ab) < n)
        system_type = con_with_inf_sols;
    else
        system_type = inc;
    end
end
