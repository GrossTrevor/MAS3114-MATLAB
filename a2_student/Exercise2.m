function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    transform_A1 = transformation(A1);
    transform_A2 = transformation(A2);
    transform_A3 = transformation(A3);

    transform_B1 = transformation(B1);
    transform_B2 = transformation(B2);
    transform_B3 = transformation(B3);

    C1 = randi([-4, 8], [3 3]);
    C2 = randi([-4, 8], [3 3]);
    C3 = randi([-4, 8], [3 3]);

    transform_C1 = transformation(C1);
    transform_C2 = transformation(C2);
    transform_C3 = transformation(C3);

    % --- Part C [10 Points] --- %

    % (1) When m < n, a transformation T(x) = Ax
    %     The rank of A can be at most m, which, for T to be one-to-one the
    %     rank of A must be n.

    % (2) When m > n, a transformation T(x) = Ax
    %     The rank of A can be at most n, which, for T to be onto, the rank
    %     of A must be m for it to span all of R^m.

    % (3) When m = n, a transformation T(x) = Ax
    %     If m = n, the rank of A can still be less than n, meaning it
    %     would not be onto or one-to-one. This is possible when the
    %     vectors of a matrix are salar multiples of each other.

    example_neither = [1 2 3;
                       2 4 6;
                       3 6 9];
    transform_neither = transformation(example_neither);

    % (4) When m = n, a transformation T(x) = Ax
    %     It is not possible for a matrix to be onto but not one-to-one
    %     when m = n because the rank of A must be equal to m when it is
    %     onto, meaning it is also equal to n.
end

