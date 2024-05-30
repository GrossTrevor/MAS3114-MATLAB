function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    A = [1 2 3;
         4 5 6;
         -7 -8 -9];
    b = [2;
         4;
         6];
    c = [2 -2 2];
    D = [1 2 3 4 5;
         -5 -4 -3 -2 -1;
         4 3 2 1 0];
    x1 = A(3, :); % The third row of the matrix
    x2 = D(:, 5); % The fifth column of the matrix
    x3 = [A b]; % b added as another column after A
    aug = [A;
           c]; % c added as another row after A

    % --- Part B [10 Points] --- %
    x4 = eye(7); % 7x7 identity matrix
    x5 = zeros(6, 4); % 6x4 matrix of zeros
    x6 = zeros(6); % 6x6 matrix of zeros
    x7 = ones(5, 3); % 5x3 matrix of ones
    x8 = diag(c); % Values of c imposed diagonally into a cubic matrix corresponding to the number of entries in c

    % --- Part C [10 Points] --- %
    F1 = randi([-4, 8], 3, 5); % 3x5 matrix of random ints from -4 to 8

    F2 = F1;    % Copy array
    F2(:, [2 5]) = F1(:, [5 2]); % Switching the second and fifth columns of F1 and placing them in F2

    E = [A F2]; % F2 added after A
    
    [m,n] = size(E); % m corresponds to the number of rows and n to the number of columns
    
    E1 = E(:, [3 8]); % Copying the third and eighth columns and placing them in E1
    E2 = E(:, 3:8); % Copying everything from the third and eighth columns and placing it in E2
end
