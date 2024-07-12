function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: Solve a system Ax=b using Cramer's Rule
    % Input Argument [A]: coefficient matirx
    % Input Argument [b]: column vector
    % Output Argument [x]: particular solution to Ax=b (empty if system is inconsistent)

    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    [m, n] = size(A); % # of rows and columns of A, respectively

    % Use CramersRule3x3.m as a guide to write this new function.
    % Hint: Use a for-loop.

    if m ~= n
        x = NaN;
    elseif abs(det(A)) <= 10^(-8)
        x = NaN;
    else
        x = zeros(n, 1);
        for i = 1:n
            B = A;
            B(:, i) = b;
            x(i) = det(B) / det(A);
        end
    end
end
