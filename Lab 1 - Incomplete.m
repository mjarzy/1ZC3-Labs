% Question 1:
A = [11/4 -19/16 -11/16 -3/16;
3/4 13/16 -11/16 -3/16;
3/4 -3/16 5/16 -3/16;
27/2 -51/8 -27/8 -11/8]; % system of differential equation given

[P,D] = eig(A) % find the eigenvectors and eigenvalues
x1=P(:,2)/P(1,2); % start with the largest eigenvector and go in order
x2=P(:,4)/P(1,4);
x3=P(:,3)/P(1,3);
x4=P(:,1)/P(1,1);

% Question 2:
P = [x1 x2 x3 x4]; % combine eigenvectors
y0 = [15; 9; 8; 59]; % initial population matrix given
c = inv(P)*y0; % solve for constants using inverse of P matrix and y0 vector
