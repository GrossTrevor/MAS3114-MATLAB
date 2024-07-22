function [name, ufid, ...
    u1, u2, v1, v2, v3, ...
    u1_dot_v1, v1_dot_u1, ...
    norm_u1, u1_dot_u1, norm_v1, v1_dot_v1, ...
    LHS1, RHS1, LHS2, RHS2, LHS3, RHS3, ...
    y1, z1, verify_sum1, verify_orthogonal1, ...
    y2, z2, verify_sum2] = Exercise3()
    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    % --- Part A [10 Points] --- %
    u1 = [1; -1; -2; 3];
    u2 = [1; 0; -3; -1];

    v1 = [4; 2; 3; 1];
    v2 = [-1; 0; 3; 1];
    v3 = [2; 0; -6; -2];

    % (i) u1  v1 and v1  u1
    u1_dot_v1 = u1'*v1;
    v1_dot_u1 = v1'*u1;
    % Property: The dot product/inner products is/are commutative. (FILL IN THE BLANK)

    % (ii) ||u1||, u1  u1 and ||v1||, v1  v1
    norm_u1 = norm(u1);
    u1_dot_u1 = u1'*u1;

    norm_v1 = norm(v1);
    v1_dot_v1 = v1'*v1;

    % Relation Between Inner Product & Norm: The norm of a vector is the 
    % square root of the dot product of the vector and itself

    % (iii) Verify Cauchy-Schwarz Inequality (|u  v| <= ||u|| * ||v||)
    % => u1 & v1
    LHS1 = norm(u1_dot_v1);
    RHS1 = norm_u1 * norm_v1;
    % Observe: LHS1 < RHS1

    % => u2 & v2
    LHS2 = norm(u2'*v2);
    RHS2 = norm(u2) * norm(v2);
    % Observe: LHS2 == RHS2

    % => u2 & v3
    LHS3 = norm(u2'*v3);
    RHS3 = norm(u2) * norm(v3);
    % Observe: LHS3 == RHS3

    % The Cauchy-Schwarz Inequality is an equality when... u and v are
    % linearly dependent.

    % --- Part B (see proj.m) [10 Points] --- %

    % --- Part C [10 Points] --- %
    % (i) v1 as a linear combination of u1 and u1's orthogonal complement
    [y1, z1] = proj(v1, u1); % (UNCOMMENT THIS LINE)

    verify_sum1 = y1 + z1; % (SHOULD BE EQUAL TO v1)
    verify_orthogonal1 = dot(z1, u1);

    % (ii) v2 as a linear combination of u2 and u2's orthogonal complement
    [y2, z2] = proj(v2, u2); % (UNCOMMENT THIS LINE)

    verify_sum2 = y2 + z2; % (SHOULD BE EQUAL TO v2)

    % z2 is the zero vector because... vectors v2 and u2 are linearly
    % dependent.
end
