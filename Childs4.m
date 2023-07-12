format rat

A = [37/14 -17/14 -5/7 -3/14; 
9/14 11/14 -5/7 -3/14; 
9/14 -3/14 2/7 -3/14;
135/14 -73/14 -19/7 -17/14]

[P,D] = eig(A)

P_Scaled = P ./ P(1,:);

x1 = P_Scaled(:,1)
x2 = P_Scaled(:,2)
x3 = P_Scaled(:,3)
x4 = P_Scaled(:,4)

[~, index] = max(P_Scaled(4,:))
largest_eigenvector = P_Scaled(:, index)
largest_fourth_component = largest_eigenvector(4)
