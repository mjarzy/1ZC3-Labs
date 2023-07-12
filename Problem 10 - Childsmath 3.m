format rational

P = [1 7; 1 -2] %Enter eigenvector matrix
D = [1 0; 0 0] %Enter eigenvalue matrix

Pinv = inv(P)

Asquared = (P*D*Pinv)^2