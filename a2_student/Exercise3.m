function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    % The outputs of both for loops are the same.

    % For-Loop (i) = n^2 FLOPs
    % For-Loop (ii) = n(n + 1) FLOPs

    % For-Loop (ii) uses more FLOPs

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (i) USING WHILE LOOPS HERE)
    i3 = 1;

    while i3 <= n
        j3 = 1;
        while j3 <= n
            A3(i3,j3) = i3 + j3;
            j3 = j3 + 1;
        end
        i3 = i3 + 1;
    end

    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)

    % (REWRITE FOR-LOOP (ii) USING WHILE LOOPS HERE)
    i4 = 1;

    while i4 <= n
        j4 = 1;
        while j4 <= n
            A4(i4,j4) = i4 + j4;
            A4(j4,i4) = A4(i4,j4);
            j4 = j4 + 1;
        end
        i4 = i4 + 1;
    end

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-4, 8], [n (n-2)]);

    ABBA = A * B;
    % The number of columns in the first matrix needs to be equal to the
    % number of rows in the second, so only AB works.

    C = randi([-4, 8], [n n]);

    AC = A * C;
    CA = C * A;
    % The multipication occurs in a different order by rows and columns, so
    % it makes sense that AC and CA will be different.
    % Aside: Matrix multiplication is function composition.

    AI = A * eye(n);
    IA = eye(n) * A;
    % Since I only contains 1s across a diagonal, it does not matter which
    % position it is in the dot product because the same numbers will be
    % multiplied by it anyways, and the rest will be zeroed out.
    % Hint: I_n, the identity matrix, has some special property.

    % --- Part D [10 Points] --- %
    inverse_A = inv(A);
    % A is invertable

    D = [1 -1 2;
         0 0 1;
         1 3 -2];
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = rref([D, eye(size(D))]);
    rref_inverse_D = rref_something(:, size(D, 2)+1:end);

    inv_inv_D = inv(inverse_D);
    % The inverse of the inverse of D is equal to D.

    E = [1 0 2;
         2 -1 5;
         -1 1 -1];

    inverse_DE = inv(D * E);
    inv_D_inv_E = inv(D) * inv(E);
    inv_E_inv_D = inv(E) * inv(D);
    % The inverse of the product of two invertible matrices D and E is
    % equal to inv_E_inv_D

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    % The inverse of the transpose of an invertible matrix D is equal to
    % the transpose 
end
