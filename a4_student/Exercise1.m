function [name, ufid, ...
    n1, B1, A1, ...
    P1, D1, PDP1, ...
    P1_again, D1_again, PDP_again, ...
    P2, D2, PDP2, P3, D3, PDP3, ...
    A2, P4, D4, verify1_LHS, verify1_RHS, verify2, basis_eigenspace, ...
    A3, P5, D5, dot_A3, ...
    A4, P6, D6] = Exercise1()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    rng(ufid, 'twister') % (DO NOT REMOVE)

    % --- Part A [10 Points] --- %
    % vvv GENERATES RANDI MATRIX WITH DISTINCT EIGENVALUES vvv %
    n1 = 4;
    A1 = [];
    B1 = [];
    while length(unique(diag(A1))) ~= n1
        B1 = randiFullRank([-7, 7], n1);
        A1 = triu(B1); % Returns the upper-triangular part of A1
    end
    % ^^^ DO NOT MODIFY! ^^^ %

    % The eigenvalues of A1 are -7, -2, 2, 7 because/as... the eigenvalues
    % of a triangular matrix are the entries on its main diagonal.

    [P1, D1] = eig(A1); % (UNCOMMENT THIS LINE)

    % P1 is... a matrix whose columns are the corresponding right eigenvectors
    % D1 is... the main diagonal of A1 (the eigenvalues)

    PDP1 = P1 * D1 * inv(P1);

    [P1_again, D1_again] = eigvec(A1); % (UNCOMMENT THIS LINE)
    PDP_again = P1_again * D1_again * inv(P1_again);

    % We can conlude that A1 is diagonalizeable
    % since... A1 has n eigenvectors and n independent columns.

    % (i) First distinct diagonalization
    P2 = P1; % (DO NOT REMOVE)
    D2 = D1; % (DO NOT REMOVE)

    % MODIFY P2 & D2 HERE
    temp = P2(:, 1);
    P2(:, 1) = P2(:, 2);
    P2(:, 2) = temp;
    
    temp = D2(1, 1);
    D2(1, 1) = D2(2, 2);
    D2(2, 2) = temp;

    PDP2 = P2 * D2 * inv(P2);

    % (ii) Second distinct diagonalization
    P3 = P1; % (DO NOT REMOVE)
    D3 = D1; % (DO NOT REMOVE)

    % MODIFY P3 & D3 HERE
    P3(:, 3) = 2 * P3(:, 3);
    D3(3, 3) = D3(3, 3);

    PDP3 = P3 * D3 * inv(P3);

    % --- Part B [10 Points] --- %
    A2 = [-3 1 0 0;
          0 -3 1 0;
          0 0 -3 1;
          0 0 0 -3];

    [P4, D4] = eig(A2); % (UNCOMMENT THIS LINE)

    verify1_LHS = A2 * P4;
    verify1_RHS = P4 * D4;
    verify2 = P4 * D4 * inv(P4);

    % Observe: A2 is not equal to P4 * D4 * inv(P4)

    basis_eigenspace = NulBasis(A2);

    % A2 is not diagonalizable because...
    % (i)  There is only one distinct eigenvalue
    % (ii) The columns are not linearly independent from each other

    % --- Part C [10 Points] --- %
    A3 = [6 -1;
          -1 6];

    [P5, D5] = eigvec(A3); % (UNCOMMENT THIS LINE)

    dot_A3 = dot(P5(:,1), P5(:,2));

    % The eigenvectors of A2 are orthogonal. (FILL IN THE BLANK)

    % Solution: x(t) = c1*e^(5t)*[1;1] + c2*e^(7t)*[1;-1]

    % --- Part D [10 Points] --- %
    A4 = [3 -1 -1;
          -1 3 -1;
          -1 -1 3];

    [P6, D6] = eigvec(A4); % (UNCOMMENT THIS LINE)

    % A4 is diagonalizable because... A4 is an nxn matrix with each column
    % being linearly independent

    % Solution: x(t) = c1*e^(t)*[1;1;1] + c2*e^(4t)*[-1;1;0] + c3*e^(4t)*[-1;0;1]
end
