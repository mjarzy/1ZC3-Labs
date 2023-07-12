%Childsmath Lab 3
% Problem 1, find the determinant of this vector as a square matrix

x1 = [5 2 2 3 4 3 3 3 2 3 5 5 3 6 4 5 3 1 1 1 4 2 4 6 4 6 1 2 1 5 4 4 5 4 2 4 6 3 4 5 3 5 4 4 1 6 6 4 6 2 4 2 2 3 4 4 6 4 4 5 5 4 2 6 3 2 1 3 4 4 4 4 5 4 2 4 2 4 2 5 2];
p1_square_det = det(reshape(x,9,9));
p1_square_det

% Problem 2, create a tri-diagoial matrix

x2= [4 4 3 2 3 3 1 2 5 4 5];
y2 = [3 1 5 4 4 3 3 1 5 5];

d1 = diag(y2,-1);
d2 = diag(x2);
d3 = diag(y2, 1);

A = d1 + d2 + d3

det(A)

[P,D] = eig(A);
eigval = diag(D);
abs_eigval = abs(eigval);
sort_abs_eigval = sort(abs_eigval);
p2_dominant_eigenvalue = sort_abs_eigval(end);
p2_dominant_eigenvalue

% Problem 3, true and false test cases
% i) If A is n × n, then A and A−1 have the same eigenvalues.

A1 = randi([1 10], 4, 4)
A1inv = inv(A1)

eig(A1)
eig(A1inv)
if eig(A1) == eig(A1inv)
    disp("True")
elseif eig(A1) ~= eig(A1inv)
    disp("False")
end

disp("----------------------------")
% i) is false.

% ii) If A is n × n, then A and A−1 have the same eigenvectors.

A2 = randi([1 10], 4, 4)
A2inv = inv(A2)

[P,D] = eig(A2)
[P,D] = eig(A2inv)

disp("----------------------------")
% ii) is true.

% iii) If A is n × n then det(Ak ) = [det(A)]k

A3 = randi([1 100], 6, 6)
k = 3

detnk = det(A^k)
detwk = (det(A))^k

disp("----------------------------")
% iii) is true. 

% iv) Invertible matricies part 1.

I1 = eye(4)
J1 = ones(4)

combo1 = I1 - (1/4)* J1 

det(combo1)

disp("----------------------------")
% iv) is false, already is non-invertible by determinant thus the other
% statement does not hold. 

%v) Idempotent

n = 5;
I2 = eye(n);
J2 = ones(n);

A4 = I2 - (1/n) * J2;

A4
test1 = A4^2
test2 = A4^3
test3 = A4^4

disp("----------------------------")
%v is true.

% Threfore, i) and iv) are false.

% Problem 4, low triangular matrix, tiled.

repmat(tril(ones(4)),4,3)
