function [E_matrices_in_order, A_inverse] = ExtraCredit()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;
    
    % ==> FINDING A^-1 WITH ELEMENTARY MATRICES <==
    %           Authored by Robert Conde
    %
    % You will determine the inverse of A using ONLY elementary matrices.
    % You may not call inv(...) or rref(...).
    % 
    % This process is covered in your book in "Chapter 2.2: The Inverse of
    % a Matrix" (see Theorem 7 & Proof). We will use the same numbering
    % scheme E1, E2, ..., En for (En * ... * E_2 * E1) * A = I. You will
    % determine matrices E1, ..., En so find the inverse of A,
    % A^-1 = (En * ... * E_2 * E1).
    %
    % You may look up example of this being done but your work should be
    % original. Have fun.
    
    % This is our 3x3 matrix A that we will find the inverse of
    A_original = NaN; % Enter Matrix A
    A = A_original;
    
    
    % Repeat the following 4 commands until A equals the 3x3 identity matrix
    E1 = NaN; % Enter your first elementary matrix
    A = E1 * A;
    disp("A now is...")
    disp(A); % We want to see A being reduced to the identity

    E2 = NaN; % Enter your second elementary matrix
    A = E2 * A;
    disp("A now is...")
    disp(A);
    
    % Repeat for E3, E4, ... as needed
    



    % List your matrices here as shown
    E_matrices_in_order = {E1, E2}; % Should look like {E1, E2, ..., En}
    
    % Multiply your matrices here as shown
    A_inverse = E2 * E1; % Should look like En * ... * E_2 * E1
    
    % DO NOT MODIFY ANYTHING BELOW
    disp("Your Inverse Times A is...");
    disp(A_inverse * A_original);
end
