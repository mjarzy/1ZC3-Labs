u = [2,1,1]
v = [2,5,2]
w = [4,3,6]

a = dot(u,cross(v,w))
b = dot(w,cross(v,u))

% i) is true

c = cross((5*u+v),(u+4*v))
d = 21*(cross(u,v))

% ii) is false

% define v1 and v2
v1 = [1; -1; -2];
v2 = [2; -2; -1];

% define the vectors to check
x = [-1, 1, -1; -3, 3, 0; -4, 4, 0];

% check if x is in the span of v1 and v2
for i = 1:size(x, 1)
    A = [v1, v2];
    if rank(A) == 2
        % compute the coefficients of the linear combination
        x_i = x(i, :)';
        x_coef = A \ x_i;
        % check if x is in the span of v1 and v2
        is_in_span = norm(A*x_coef - x_i) < eps;
    else
        % v1 and v2 do not span the entire space
        is_in_span = false;
    end
    % print the result for the i-th vector
    fprintf('Vector x%d is in the span of v1 and v2: %d\n', i, is_in_span)
end



