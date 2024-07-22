function [y_hat, z, name, ufid] = proj(y, u)
    % Purpose: Find the orthogonal projection of y onto u and the component
    % of y orthogonal to u
    % Input Argument [y]: Vector to be projected
    % Input Argument [u]: Vector onto which y will be projected
    % Output Argument [y_hat]: Projection onto u of y
    % Output Argument [z]: Component of y orthogonal to u

    % --- Name & UFID --- %
    name = "Trevor Gross";
    ufid = ;

    unit_vec = dot(y, u)/dot(u, u);
    y_hat = unit_vec * u;
    z = y - y_hat;
end
