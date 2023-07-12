% Define variables and constants
x = linspace(-5,5,100);
y = linspace(-5,5,100);
[X,Y] = meshgrid(x,y);
a = 0.5;
b = 1.5;

% Define the equation
Z = (a*(X.^2 + Y.^2) + b*sqrt(abs(X.*Y))) .* exp(-(X.^2 + Y.^2)/2);

% Plot the surface
surf(X,Y,Z)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('A Complex 3D Equation')
