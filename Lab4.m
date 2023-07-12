%Childsmath Lab 4
%Problem 1

format rat

A = [37/14 -17/14 -5/7 -3/14; 
9/14 11/14 -5/7 -3/14; 
9/14 -3/14 2/7 -3/14;
135/14 -73/14 -19/7 -17/14];

[P,D] = eig(A)

%Trick is to start with the greatest eigenvalue
x1=P(:,2)/P(1,2)
x2=P(:,4)/P(1,4)
x3=P(:,3)/P(1,3)
x4=P(:,1)/P(1,1)

%Problem 2

y0 = [16 14 5 50]';

P2 = [x1 x2 x3 x4];
c= inv(P2)*y0;

%Problem 3

k1=c(1)*x1(1)
k2=c(2)*x2(1)
k3=c(3)*x3(1)
k4=c(4)*x4(1)

x1
x2
x3
x4

eigs = sort(diag(D), "descend");

s = @(t) k1*exp(eig(1)*t) + k2*exp(eig(2)*t) + k3*exp(eig(3)*t) + k4*exp(eig(4)*t) 

%Problem 4

A1 = (1/sqrt(3))*[1 + 1i, -1i; 1, 1 + 1i];
A2 = (1/sqrt(2))*[1, -1i; 1, 1i];
A3 = (1/2)*[1 - 1i, 1 + 1i; 1- 1i, -1 + 1i];

inv(A1)
A1'

inv(A2)
A2'

inv(A3)
A3'

%i) and ii) are true, iii) is false, thus D. You cannot use comparison
%operators as MATLAB is performing floating point operations, thus
%resulting in errors. If you were to use a comparison operator, all of
%these operations would return as false, the incorrect anwser.

%Problem 5

%Part a)
U = [3, -2, -5, 5];
V = [-7, 5, 3, 2];

Projection_U_V = dot(U,V)/dot(V,V)*V;
U1 = norm(U - Projection_U_V);
disp("The projection is:")
disp(U1)

%Part b)

u = [-3.6 -0.2 1.7] ;
v = [6.2 1.1 1.8];
w = [9.9 6.6 -4.1];
z = [-1.4 -6.5 -0.4];

A = det([dot(u,w) dot(u,z); dot(v,w) dot(v,z)]);
disp("The determinant is:")
disp(A)


